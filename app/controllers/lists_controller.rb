class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    @lists = List.all
    if @list.save
      redirect_to lists_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  def search
    @lists = List.search(params[:search])
    @tasks = Task.search(params[:search])
  end

  private
    def list_params
      params.require(:list).permit(:title, :check, :deadline, tasks_attributes: [:name, :due_date, :create_date, :done])
    end
end
