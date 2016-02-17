require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in

    create_todo 'Feed the dog'

    expect(page).to display_todo 'Feed the dog'
  end
end
