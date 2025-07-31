# frozen_string_literal: true

# This model represents the User in the application.
# The model relies on both BCrypt and the Rails has_secure_password to perform authentication.
# Passwords are not recoverable by us, or by the User themselves when they lose access.
class User < ::ApplicationRecord
  # Defines the password and password_digest methods for verifying and authenticating.
  # See https://api.rubyonrails.org/v7.1/classes/ActiveModel/SecurePassword/ClassMethods.html
  has_secure_password

  # Validations
  validates :nickname, presence: true, length: { maximum: 25 }
  validates :email, presence: true, uniqueness: true
end
