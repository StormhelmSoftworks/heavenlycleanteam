class StaticsController < ApplicationController
  before_action :set_services, only: [:services, :quote]

  def home

  end

  def about

  end

  def services

  end

  def quote

  end

  private

    def set_services
      @services = Service.all
    end

end