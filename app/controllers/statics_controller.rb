class StaticsController < ApplicationController
  before_action :set_services, only: [:services, :quote]

  def home

  end

  def about

  end

  def contact

  end

  def services

  end

  def quote

    @partials = Service.category?("Partial")
    @packages = Service.category?("Package")
    @exteriors = Service.category?("Exterior")
    @others = Service.category?("Other")

  end

  def debug
    
  end

  private

    def set_services
      @services = Service.all
    end

end