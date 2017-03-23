class Api::PhotosController < ApplicationController
  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id
    if @photo.save
      render :show
    else
      render(
        json: {errors: @photo.errors.full_messages},
        status: 401
      )
    end
  end

  # def update
  #   @photo = Photo.find_by(id: id)
  #   @user = current_user
  #   if (@user.id == @photo.author_id && @photo.update(photo_params))
  #     render "api/photos/show"
  #   end
  #   render(
  #   json: {errors: ["Not owner"]},
  #   status: 404
  #   )
  # end

  def destroy
    @photo = Photo.find_by(id: id)
    @user = current_user
    if (@user.id != @photo.author_id)
      render(
        json: {errors: ["Not owner"]},
        status: 404
      )
    end
    render "api/photos/index"
  end

  private

  def photo_params
    params.require(:photo).permit(:url)
  end
end
