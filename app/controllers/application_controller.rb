class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_categories

  config.time_zone = "America/Bogota"

  protected

	def authenticate_editor!
		redirect_to articles_path, 
		notice: "No eres editor. Pidele ayuda al administrador" unless user_signed_in? && current_user.is_editor?
	end
	def authenticate_admin!
		redirect_to articles_path, notice: "No eres administrador." unless user_signed_in? && current_user.is_admin?
	end

  private
	#consulta las categorias para tenerlas disponibles en toda la aplicacion
	def set_categories
		@categories = Category.all	
	end
end
