class Api::StepsController < ApplicationController
  def index
    @steps = Step.all
    render :index
  end

  def create
    @step = Step.new(step_params)
    if @step.save
      render :show
    else
      render(
        json: {errors: @step.errors.full_messages},
        status: 401
      )
    end
  end

  # def update
  #   @step = Step.find_by(id: id)
  #   @user = current_user
  #   if (@user.id == @step.author_id && @step.update(step_params))
  #     render "api/steps/show"
  #   end
  #   render(
  #   json: {errors: ["Not owner"]},
  #   status: 404
  #   )
  # end

  def destroy
    @step = Step.find_by(id: id)
    @user = current_user
    if (@user.id != @step.author_id)
      render(
        json: {errors: ["Not owner"]},
        status: 404
      )
    end
    render "api/steps/index"
  end

  private

  def step_params
    params.require(:step).permit(:title, :body, :guide_id)
  end
end
