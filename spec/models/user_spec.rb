require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before { @user = create(:user) }
    it "can be created" do
      expect(@user).to be_valid
    end
    it "can not be created without an email" do
      @user.email = nil
      expect(@user).to be_invalid
    end
  end
end