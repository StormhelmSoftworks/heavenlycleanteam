class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :delete, :destroy]

  def index
    @services = Service.all
  end

  def show

  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      flash[:notice] = "Successfully Created Service"
      redirect_to services_path
    else
      flash[:alert] = "Failed to Create Service"
      redirect_to new_service_path
    end
  end

  def edit

  end

  def update
    if @service.update(service_params)
      flash[:notice] = "Successfully Updated Service"
      redirect_to services_path
    else
      flash[:alert] = "Failed to Update Service"
      redirect_to edit_service_path
    end
  end

  def delete

  end

  def destroy
    flash[:notice] = "Successfully Deleted Service"
    @service.destroy
    redirect_to services_path
  end

  private

    def service_params
      params.require(:service).permit(:name, :rate)
    end

    def set_service
      @service = Service.find(params[:id])
    end
end
