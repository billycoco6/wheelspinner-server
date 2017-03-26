class UsersController < ApplicationController
  # skip_before_action :check_jwt_for_current_user, only: [:api_sign_in, :api_sign_out]
  # respond_to :json

  def register
    @user = User.create(user_params)
    # json_response(@user, :created)
    render json: { success: true }
  end

  def user_params
    params.require(:auth).permit(:email, :password, :firstname, :lastname)
  end
end
