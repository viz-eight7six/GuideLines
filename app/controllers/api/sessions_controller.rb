class Api::SessionsController < ApplicationController

  def create
    username, password = session_params.values
    @user = User.find_by_credentials(username, password)
    if @user.nil?
      render(
        json: {errors: ["Invalid username/password combination"]},
        status: 422
      )
    else
      login(@user)
      render "api/users/show"
    end

  end

  def destroy
    @user = current_user
    if !logged_in?
      render(
        json: {errors: ["No current user"]},
        status: 404
      )
    end
    logout
    render "api/users/show"
  end

  private

  def session_params
    params.require(:user).permit(:username, :password)
  end

end
