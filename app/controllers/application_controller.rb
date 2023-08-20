class ApplicationController < ActionController::Base
  helper_method def current_user
    @current_user ||= User.find_or_create_by(name: "Dom")
  end
end
