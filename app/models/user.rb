class User < ApplicationRecord
  has_secure_password
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :firstname, :lastname, :password, presence: true
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  has_many :spins

  def self.from_token_payload payload
    # Returns a valid user, `nil` or raise
    # e.g.
    #   self.find payload["sub"]
    self.find payload["sub"]
  end
end
