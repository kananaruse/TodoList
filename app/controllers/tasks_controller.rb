class TasksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.create(task_params)

    redirect_to list_path(@list)
  end

  def edit
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
  end

  def update
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])

    if @task.update(task_params)
      redirect_to list_path(@list)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    @task.destroy

    redirect_to list_path(@list)
  end

  def toggle
    # render nothing: true
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    # @task = Task.find(params[:id])
    @task.done = !@task.done
    @task.save
    redirect_to list_path(params[:list_id])
  end

  private
    def task_params
      params.require(:task).permit(:name, :due_date, :create_date, :done)
    end
end
