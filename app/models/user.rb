class User
  def initialize email
    @email = email
  end

  def todos
    Todo.where(email: @email).order(created_at: :desc)
  end

  def signed_in?
    @email.present?
  end
end
