class PrioritiesController < ApplicationController
  def show
    @priority = Priority.find(params[:id])
    @tasks = Task.where(category_id: params[:id])
  end
end
