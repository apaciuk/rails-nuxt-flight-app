# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ActionController::RequestForgeryProtection
  protect_from_forgery with: :exception, unless: -> { request.format.json? }
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :configure_permitted_parameters, if: :devise_controller?
  respond_to :json
  around_action :handle_errors

  def render_api_success(serializer, obj, _options = {})
    render json: serializer.new(obj).serializable_hash
  end

  def render_api_error(messages, code)
    data = { errors: { code:, details: Array.wrap(messages) } }
    render json: data, status: code
  end

  def handle_errors
    yield
  rescue ActiveRecord::RecordNotFound => e
    render_api_error(e.message, 404)
  rescue ActiveRecord::RecordInvalid => e
    render_api_error(e.record.errors.full_messages, 422)
  rescue ::JWT::ExpiredSignature => e
    render_api_error(e.message, 401)
  rescue ::JWT::DecodeError => e
    render_api_error(e.message, 401)
  rescue ActionController::ParameterMissing => e
    render_api_error(e.message, 400)
  end

  def route_not_found
    data = { errors: { code: 404, details: 'Endpoint not found' } }
    render json: data, status: 404
  end
end
