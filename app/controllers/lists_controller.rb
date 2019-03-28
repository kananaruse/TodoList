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
      flash[:success] = '新しいToDoリストが作成されました'
      redirect_to lists_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])

    if @list.update(list_params)
      redirect_to lists_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to lists_path
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
