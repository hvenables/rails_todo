require 'rails_helper'

feature 'User sees own todos' do
  scenario 'User doesnt see others todos' do
    Todo.create(title: "Buy Milk", email: "someone_else@example.com")

    sign_in "someone@example.com"

    expect(page).not_to have_css ".todos li", text: "Buy Milk"
  end
end
