class JobsController < ApplicationController
  before_action :set_job, only: [:show, :update, :destroy]

  # GET /jobs
  def index
    @requests = Request.where("user_id = #{@current_user.id}")
    job_ids = []
    @requests.each do |request|
      job_ids << request.job_id
    end
    @jobs = Job.where.not({ id: job_ids, owner_id: @current_user.id, status: ["filled", "finished"] })
    p @jobs

    render json: @jobs
  end

  def applied
    @request = Request.where("user_id = #{@current_user.id}")
    @jobs = Job.where({ id: @request.first.job_id}, status: "open")

    render json: @jobs
  end

  def myJobs
    @jobs = Job.where({ owner_id: @current_user.id, status: ["open", "filled"] })
    render json: @jobs
  end

  def booked
    @jobs = Job.where({ tasker_id: @current_user.id, status: "filled" })
    p @jobs
    render json: @jobs
  end

  # GET /jobs/1
  def show
    render json: @job
  end

  # POST /jobs
  def create
    @job = Job.new(job_params)
    @job.owner_id = @current_user.id

    if @job.save
      render json: @job, status: :created, location: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jobs/1
  def update
    if @job.update(job_params)
      render json: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jobs/1
  def destroy
    @job.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_params
      hash = {}
      hash.merge! params.slice(:title, :description, :location, :postcode, :datetime, :status, :image, :rate)
      hash
    end
end
