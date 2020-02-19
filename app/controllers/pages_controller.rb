class PagesController < ApplicationController
  helper_method :sort_column, :sort_direction
  def home
    @tasks = Task.order(sort_column + " " + sort_direction).accessible_by(current_ability)
  end
end
