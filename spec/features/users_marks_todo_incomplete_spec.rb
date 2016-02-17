require 'rails_helper'

feature 'user marks todo incomplete' do
  scenario 'successfully' do
    sign_in

    create_todo 'Feed the dog'

    click_on 'Mark complete'

    click_on 'Mark incomplete'

    expect(page).to_not display_completed_todo "Feed the dog"
    expect(page).to display_todo "Feed the dog"
  end
end
