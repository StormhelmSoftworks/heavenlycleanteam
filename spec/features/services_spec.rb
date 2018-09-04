require 'rails_helper'

describe 'navigation' do
  before do
    user = User.create(email: "factory@factory.com", password: "123456")
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

    describe 'new from index' do
      it 'has a link from the home page' do
        visit root_path

        click_link("new_service_from_nav")
        expect(page.status_code).to eq(200)

      end
    end

    describe 'delete from index' do
      it 'can be deleted' do
        service = create(:service)
        visit services_path

        click_link("delete_service_#{service.id}_from_index")
        expect(page.status_code).to eq(200)
      end
    end
  end

  describe 'new and create' do
    before do
      visit new_service_path
    end
    it 'has a new form that can be reached' do
      expect(page.status_code).to eq(200)
    end

    it 'can be created from new form page' do
      fill_in 'service[name]', with: "Test Service"
      fill_in 'service[rate]', with: 150

      click_on 'Submit'

      expect(page).to have_content("Test Service")
    end
  end

  describe 'edit' do
    before do
      @service = create(:service)
    end
    it 'can be reached by edit on index page' do

      visit services_path
      click_link "edit_#{@service.id}"
      expect(page.status_code).to eq(200)
    end

    it 'can be edited' do
      visit edit_service_path(@service)

      fill_in 'service[name]', with: "Edited Service"
      fill_in 'service[rate]', with: 110

      click_on 'Submit'

      expect(page).to have_content('Edited Service')
    end
  end
end