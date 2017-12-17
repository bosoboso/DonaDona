class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
    if current_user.department == "sales"
      pages_index_path
    else
      career_index_path
    end
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  protected
    def configure_permitted_parameters
      added_attrs = [:employee_id, :username, :email, :password, :password_confirmation, :department]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
end
