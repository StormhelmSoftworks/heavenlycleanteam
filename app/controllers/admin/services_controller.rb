module Admin
  class ServicesController < ApplicationController
    before_action :set_service, only: [:edit, :update, :delete, :destroy]

    def index
      @services = Service.all
    end

    def new
      @page_header = "New Service"
      @service = Service.new
    end

    def create
      @service = Service.new(admin_service_params)
      if @service.save
        flash[:notice] = "Successfully Created Service"
        redirect_to admin_services_path
      else
        flash[:alert] = "Failed to Create Service"
        redirect_to new_admin_service_path
      end
    end

    def edit
      @page_header = "Edit Service"
    end

    def update
      if @service.update(admin_service_params)
        flash[:notice] = "Successfully Updated Service"
        redirect_to admin_services_path
      else
        flash[:alert] = "Failed to Update Service"
        redirect_to edit_admin_service_path
      end
    end

    def delete

    end

    def destroy
      flash[:notice] = "Successfully Deleted Service"
      @service.destroy
      redirect_to admin_services_path
    end

    private

    def admin_service_params
      params.require(:service).permit(:name, :rate, :category, :qty, :display_name)
    end

    def set_service
      @service = Service.find(params[:id])
    end
  end

end
