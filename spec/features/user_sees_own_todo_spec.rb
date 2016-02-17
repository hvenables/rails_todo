require 'rails_helper'

feature 'User sees own todos' do
  scenario 'User doesnt see others todos' do
    Todo.create(title: "Buy Milk", email: "someone_else@example.com")

    sign_in "someone@example.com"

    expect(page).not_to display_todo "Buy Milk"
  end
end
