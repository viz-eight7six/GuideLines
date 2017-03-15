class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    session[:session_token] = @user.session_token
    if @user.save
      login(@user)
      render "api/users/show"
    else
      render(
        json: {errors: @user.errors.full_messages},
        status: 401
      )
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
