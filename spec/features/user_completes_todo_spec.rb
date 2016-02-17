require 'rails_helper'

feature 'user completes todo' do
  scenario 'successfully' do
    sign_in

    create_todo 'Feed the dog'

    click_on 'Mark complete'

    expect(page).to display_completed_todo "Feed the dog"
  end
end
