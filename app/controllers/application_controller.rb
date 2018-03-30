class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  # rescue_from ::StandardError, with: :handle_err

  private
  def record_not_found
  	render plain: "404 Not Found", status: 404
  end

  # def handle_err(err)
  #   redirect_back(fallback_location: request.referer, notice: '没有这个权限') if err.message == "not_belongs_to_u"
  # end
end
