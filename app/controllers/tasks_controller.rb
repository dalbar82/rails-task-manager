class TasksController < ApplicationController

def index
  @tasks = Task.all
end

def show
  @task = Task.find(params[:id])

end

def new
  @task = Task.new
end

def create
  @task = Task.new(post_attributes)
  @task.save

  redirect_to tasks_path(@task)
end

def edit
  @task = Task.find(params[:id])
end

def update
  @task = Task.find(params[:id])
  @task.update(post_attributes)

  redirect_to tasks_path(@task)
end

 def destroy
    @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/tasks/destroy.html.erb
    redirect_to tasks_path(@task)
  end

private

def post_attributes
    params.require(:task).permit(:title, :details, :completed)
end
end
