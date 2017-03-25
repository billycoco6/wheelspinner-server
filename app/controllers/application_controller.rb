class ApplicationController < ActionController::API
  include Knock::Authenticable
  include Response
  include ExceptionHandler

  before_action :authenticate
end
