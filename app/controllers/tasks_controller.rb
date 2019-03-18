class TasksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.create(task_params)

    redirect_to list_path(@list)
  end

  private
    def task_params
      params.require(:task).permit(:name, :due_date, :create_date, :done)
    end
end
