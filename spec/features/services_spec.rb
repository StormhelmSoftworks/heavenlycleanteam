require 'rails_helper'

describe 'navigate' do
  before do
    @user = create(:user)
    login_as @user, :scope => :user
  end
  describe 'index' do
    before do
      visit services_path
    end
    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Services' do
      expect(page).to have_content('Services')
    end

    it 'has a list of services' do
      create(:service)
      create(:second_service)
      visit services_path
      expect(page).to have_content(/Service1|Service2/)
    end
  end

  describe 'creation' do
    before do
      visit new_service_path
    end
    it 'has a new form that can be reached' do
      expect(page.status_code).to eq(200)
    end

    it 'can be created from new form page' do
      fill_in 'service[date]', with: "#{Date.today}"
      fill_in 'service[rationale]', with: 'Some Rationale'

      click_on 'Submit'

      expect(page).to have_content("Rationale")
    end

    it 'will have a user associated with it' do
      fill_in 'service[date]', with: "#{Date.today}"
      fill_in 'service[rationale]', with: 'User Association'

      click_on 'Submit'
      expect(User.last.services.last.rationale).to eq("User Association")
    end
  end
end