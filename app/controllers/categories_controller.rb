class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @tasks = Task.where(category_id: params[:id])
  end
end
