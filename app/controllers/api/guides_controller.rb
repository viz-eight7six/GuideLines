class Api::GuidesController < ApplicationController
  def index
    @guides = Guide.all
    render "api/guides/index"
  end

  def create
    @guide = Guide.new(guide_params)
    @guide.author_id = current_user.id
    if @guide.save
      render "api/guides/show"
    else
      render(
        json: {errors: @guide.errors.full_messages},
        status: 401
      )
    end
  end

  def update
    @guide = Guide.find_by(id: id)
    @user = current_user
    if (@user.id == @guide.author_id && @guide.update(guide_params))
      render "api/guides/show"
    end
    render(
    json: {errors: ["Not owner"]},
    status: 404
    )
  end

  def destroy
    @guide = Guide.find_by(id: id)
    @user = current_user
    if (@user.id != @guide.author_id)
      render(
        json: {errors: ["Not owner"]},
        status: 404
      )
    end
    render "api/guides/index"
  end

  private

  def guide_params
    params.require(:guide).permit(:title, :body)
  end
end
