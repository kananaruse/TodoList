class ListsController < ApplicationController
  def index
    @list = List.new
    # @list.tasks.build
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to :lists
  end

  private
    def list_params
      params.require(:list).permit(:title, :check, :deadline, tasks_attributes: [:name, :due_date, :create_date, :done])
    end
end
