class AuthController < ApplicationController
  def index
    render json: { message: "Auth endpoint working" }
  end
  def create
    user = User.new(user_params)
    # User.delete_all
    if user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  private
  def user_params
    request = params.require(:auth).permit(:username, :password, :password_confirmation, :last_name, :first_name, :email)
    return request
  end
end
