class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
  layout :layout_by_controller

	protected

	def layout_by_controller
	  devise_controller? ? 'devise' : 'application'
	end
	
  def sort_column
    Task.column_names.include?(params[:sort]) ? params[:sort] : "title"
  end
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
