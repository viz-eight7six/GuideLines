class Api::GuidesController < ApplicationController
  def index
    @guides = Guide.all
    render "api/guides/index"
  end

  def create
    @guide = Guide.new(guide_params)
    @guide.author_id = current_user.id
    if @guide.save
      @steps = params[:guide][:steps]
      if @steps
        @steps = @steps.values
        @steps.each do |step|
          @step = Step.new(step)
          @step.guide_id = @guide.id
          unless @step.save
            render(
            json: {errors: @step.errors.full_messages},
            status: 401
            )
          end
        end
      end
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
      @steps = params[:guide][:steps]
      if @steps
        @steps = @steps.values
        @steps.each do |step|
          @step = Step.find_by(id: step.id)
          unless @step.update
            render(
            json: {errors: @step.errors.full_messages},
            status: 401
            )
          end
        end
      end
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
    render json: {}, status: 200
  end

  private

  def guide_params
    params.require(:guide).permit(:title, :body, :steps, :photo_url)
  end

  def guide_only_params
    guide_params
  end
end
