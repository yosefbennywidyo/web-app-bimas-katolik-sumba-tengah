class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if:  :devise_controller?
	protect_from_forgery prepend: true

	rescue_from CanCan::AccessDenied do |exception|
		flash[:error] = "Maaf, Anda tidak memiliki hak akses untuk melakukannya."
		redirect_to root_url
	end

	
	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_in, keys: [:nama_lengkap, :email, :password, :remember_me])
		devise_parameter_sanitizer.permit(:sign_up, keys: [:nama_lengkap, :email, :password, :password_confirmation])
		devise_parameter_sanitizer.permit(:account_update, keys: [:nama_lengkap, :email, :password, :password_confirmation, :current_password])
	end
end
