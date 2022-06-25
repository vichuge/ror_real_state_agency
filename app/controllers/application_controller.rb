class ApplicationController < ActionController::Base
  def redirect_no_session
    redirect_to new_user_session_path unless user_signed_in?
  end
end
