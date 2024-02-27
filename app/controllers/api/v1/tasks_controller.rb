class Api::V1::TasksController < ApplicationController
    before_action :set_task, only: [:show, :update, :destroy]
  
    def index
      if date_params.present?
        @tasks = Task.where("start_date >= ? AND end_date <= ?", date_params[:start_date], date_params[:end_date])
      else
        @tasks = Task.all
      end
  
      render json: @tasks
    end  

    def show
      render json: @task
    end
  
    def create
      @task = Task.new(task_params)
      if @task.save
        render json: @task, status: :created
      else
        render json: @task.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @task.update(task_params)
        render json: @task
      else
        render json: @task.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @task.destroy
      head :no_content
    end
  
    private

    def set_task
      @task = Task.find(params[:id])
    end
  
    def task_params
      params.require(:task).permit(:name, :description, :start_date, :end_date)
    end

    def date_params
      params.permit(:start_date, :end_date)
    end
  end
  