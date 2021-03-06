class ApplicationController < ActionController::Base
  include ActionController::HttpAuthentication::Token::ControllerMethods
  include ::ActionController::Serialization
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  before_action :authenticate

  attr_reader :current_user

private

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      @current_user = User.find_by token: token
    end
  end
end
