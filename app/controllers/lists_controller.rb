class ListsController < ApplicationController
  def index
    @list = List.new
    # @list.tasks.build
    @lists = List.all
  end

  def show
  	@list = List.find_by(:title => params[:title])
  end

  def create
    @list = List.new(params[:list].permit(:title, :check, :deadline, tasks_attributes: [:name, :due_date, :create_date, :done]))
    @list.save
    redirect_to :lists
  end
end
