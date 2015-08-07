class JobsController < ApplicationController

  before_action :authorize, only: [:create, :update, :destroy]

  def index
    if current_user.admin?
      render json: Job.all
    else
      render json: Job.where(user_id: current_user.id)
    end
  end

  def show
    render json: Job.find(params[:id])
  end

  def create
    job = Job.new(job_params)
    if job.save
      render json: job
    else
      render json: job.errors, status: :unprocessable_entity
    end
  end

  def update
    job = Job.find(params[:id])
    if job.update!(job_params)
      render json: job
    else
      render json: job.errors, status: :unprocessable_entity
    end
  end

  def destroy
    job = Job.find(params[:id])
    job.destroy!
    head :ok
  end

private
  def job_params
    params.require(:job).permit(:title, :description, :cost, :status)
  end

  def authorize
    unless current_user.admin?
      render :text => 'Unauthorized', :status => :unauthorized
    end
    true
  end

end
