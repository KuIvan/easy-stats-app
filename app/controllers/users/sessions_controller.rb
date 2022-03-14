# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :authenticate_user!
  skip_before_action :verify_signed_out_user, only: :destroy

  def new
    render json: current_user.to_json(only: [:id, :name, :email])
  end

  def create
    #TODO make sign in with name
    if current_user.present?
      render json: current_user.to_json(only: [:id, :name, :email])
    else
      error = I18n.t "user", scope: "errors.not_found", default: :default
      render json: { errors: { "user": [error] } }, status: :not_found
    end
  end

  def destroy
    sign_out current_user
    render status: :ok
  end
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
