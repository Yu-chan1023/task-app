class ApplicationController < ActionController::Base
  before_action:get_category
  before_action:get_priority

  def get_category
    @categories = Category.all
  end

  def get_priority
    @priorities = Priority.all
  end

end
