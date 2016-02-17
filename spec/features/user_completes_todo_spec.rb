require 'rails_helper'

feature 'user completes todo' do
  scenario 'successfully' do
    sign_in

    click_on "Add a new todo"
    fill_in 'Title', with: 'Feed the dog'
    click_on 'Submit'

    click_on 'Mark complete'
    expect(page).to have_css ".todos li.completed", text: 'Feed the dog'

  end
end
