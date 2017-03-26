class UsersController < ApplicationController
  # respond_to :json

  def register
    # @user = User.create(user_params)
    @user = User.new(user_params)
    if @user.save
      render json: { success: true }
    else
      render json: { success: false}
    end
    # json_response(@user, :created)
  end

  def user_params
    params.require(:auth).permit(:email, :password, :firstname, :lastname)
  end
end
