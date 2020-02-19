class PagesController < ApplicationController
  helper_method :sort_column, :sort_direction
  def home
    @tasks = Task.order(sort_column + " " + sort_direction).accessible_by(current_ability)
  end
  private
  def sort_column
    Task.column_names.include?(params[:sort]) ? params[:sort] : "title"
  end
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
