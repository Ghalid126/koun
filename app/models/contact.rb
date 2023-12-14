class Contact
  include ActiveModel::Model
  attr_accessor :name, :email, :message

  # Validations if needed
  validates :name, :email, :message, presence: true
end
