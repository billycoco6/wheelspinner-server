class UsersController < ApplicationController
  # respond_to :json

  def register
    @user = User.new(user_params)
    if @user.save
      render json: { success: true }
    else
      render json: { success: false}
    end
  end

  def get_current_user
    render json: current_user
  end

  def user_params
    params.require(:auth).permit(:email, :password, :firstname, :lastname)
  end
end
