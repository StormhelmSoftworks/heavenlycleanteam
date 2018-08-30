require 'rails_helper'

RSpec.describe Service, type: :model do
  describe "creation" do
    before do
      user = User.create(email: "factory@factory.com", password: "123456")
      login_as user, :scope => :user
      @service = create(:service)
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
      @service.rate = "lol"
      expect(@service).to be_invalid
    end

  end
end