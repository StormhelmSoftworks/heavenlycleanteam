class ApplicationController < ActionController::Base
  helper_method :logged_in?

  def logged_in?
    return false unless current_user
  end

end
