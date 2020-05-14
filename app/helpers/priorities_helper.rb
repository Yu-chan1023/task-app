module PrioritiesHelper
  def show
    @priority = Priority.find(params[:id])
  end
end
