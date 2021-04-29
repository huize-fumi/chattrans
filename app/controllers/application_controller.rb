# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protect_from_forgery with: :exception
  before_action :set_locale

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password post])
  end

  def set_locale # パスのパラメータを現在の言語I18n.localeに設定
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {}) # デフォルト値として現在の言語を指定
    { locale: I18n.locale }.merge options
  end
end
