# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def create
    user = User.create!(account_create_params)
    sign_up(:user, user)
    render json: user.to_json(only: [:id, :name, :email])
  end

  protected

  def account_create_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
    )
  end
end
