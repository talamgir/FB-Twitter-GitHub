class HomeController < ApplicationController

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) << :username
	end

	before_action :index, :authenticate_user!

	def index
	end
end
