class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :update, :destroy]

  # GET /requests
  def index
    @requests = Request.all

    render json: @requests
  end

  def jobApplications
    @requests = Request.where(job_id: params[:id], status: 1);

    render json: @requests
  end

  def show
    render json: @request
  end

  # POST /requests
  def create
    @request = Request.new(request_params)
    @request.user_id = @current_user.id
    @request.status = 1
    if @request.save
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /requests/1
  def update
    if @request.update(request_params)
      render json: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /requests/1
  def destroy
    @request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_params
      hash = {}
      hash.merge! params.slice(:message, :job_id, :status)
      hash
    end
end
