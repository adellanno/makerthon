require 'rails_helper'

feature 'messages' do
  context 'no restaurants have been added' do
    scenario '' do
        visit '/dashboard'
        expect(page).to have_content 'Welcome to MakerMessage'
    end
  end
end

