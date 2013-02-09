class RestApisController < ApplicationController
  before_action :set_rest_api, only: [:show, :edit, :update, :destroy]

  # GET /rest_apis
  # GET /rest_apis.json
  def index
    @rest_apis = RestApi.all
  end

  # GET /rest_apis/1
  # GET /rest_apis/1.json
  def show
  end

  # GET /rest_apis/new
  def new
    @rest_api = RestApi.new
  end

  # GET /rest_apis/1/edit
  def edit
  end

  # POST /rest_apis
  # POST /rest_apis.json
  def create
    @rest_api = RestApi.new(rest_api_params)

    respond_to do |format|
      if @rest_api.save
        format.html { redirect_to @rest_api, notice: 'Rest api was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rest_api }
      else
        format.html { render action: 'new' }
        format.json { render json: @rest_api.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rest_apis/1
  # PATCH/PUT /rest_apis/1.json
  def update
    respond_to do |format|
      if @rest_api.update(rest_api_params)
        format.html { redirect_to @rest_api, notice: 'Rest api was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rest_api.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rest_apis/1
  # DELETE /rest_apis/1.json
  def destroy
    @rest_api.destroy
    respond_to do |format|
      format.html { redirect_to rest_apis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rest_api
      @rest_api = RestApi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rest_api_params
      params.require(:rest_api).permit(:name, :request, :response, :method, :http_status_code, :webservice_id)
    end
end
