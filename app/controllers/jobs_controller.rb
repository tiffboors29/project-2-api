class JobsController < ApplicationController

  def index
    render json: Job.all
  end

  def show
    render json: Job.fin(params[:id])
  end

  def new
    @job = Job.find(params[:id])
  end

  def create
    job = Job.create(job_params)
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

end
