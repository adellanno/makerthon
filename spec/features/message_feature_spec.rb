require 'rails_helper'

feature 'dashboard' do

  context 'user not signed in' do
    scenario 'user trys to go to dashboard' do
      visit '/dashboard'
      expect(current_path).to eq '/users/sign_in'
    end
  end

  context 'user signed in' do
    before { user = build :user
             sign_up user }

    scenario 'page displays content' do
        visit '/dashboard'
        expect(page).to have_content 'Welcome to MakerMessage'
    end

    scenario 'page displays address book contact' do
      visit '/dashboard'
      expect(page).to have_content "matt@matt.com"
    end
  end
end

