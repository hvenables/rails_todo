require 'rails_helper'

describe Todo, "#completed?" do
  it "returns true if completed at is set" do
    todo = Todo.new(completed_at: Time.current)

    expect(todo).to be_completed
  end

  it "returns false if completed at is nil" do
    todo = Todo.new(completed_at: nil)

    expect(todo).to_not be_completed
  end
end
