class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render :index
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author_id = current_user.id
    if @comment.save
      render :show
    else
      render(
        json: {errors: @comment.errors.full_messages},
        status: 401
      )
    end
  end

  # def update
  #   @comment = Comment.find_by(id: id)
  #   @user = current_user
  #   if (@user.id == @comment.author_id && @comment.update(comment_params))
  #     render "api/comments/show"
  #   end
  #   render(
  #   json: {errors: ["Not owner"]},
  #   status: 404
  #   )
  # end

  def destroy
    @comment = Comment.find_by(id: id)
    @user = current_user
    if (@user.id != @comment.author_id)
      render(
        json: {errors: ["Not owner"]},
        status: 404
      )
    end
    render "api/comments/index"
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :guide_id)
  end
end
