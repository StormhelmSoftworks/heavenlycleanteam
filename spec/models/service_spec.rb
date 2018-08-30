require 'rails_helper'

RSpec.describe Service, type: :model do
  describe "creation" do
    before do
      # user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "Jon", last_name: "Snow")
      # login_as user, :scope => :user
      @service = Service.create(name: "All Rooms - Standard Clean", rate: "150")
    end

    it "can be created" do
      expect(@service).to be_valid
    end

    it "cannot be created without a date and rationale" do
      @service.name = nil
      @service.rate = nil
      expect(@service).to be_invalid
    end

    it "cannot be created if rate is not a number" do
      @service.rate = "10"
      expect(@service).to be_invalid
    end

  end
end