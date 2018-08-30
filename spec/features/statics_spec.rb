
# spec/features/statics_spec.rb

require 'rails_helper'

describe 'navigate' do
  describe 'home' do
    it 'can be reached successfully' do
      visit root_path
      expect(page.status_code).to eq(200)
    end
  end

  describe 'about' do
    it 'can be reached successfully' do
      visit about_path
      expect(page.status_code).to eq(200)
    end
  end
end