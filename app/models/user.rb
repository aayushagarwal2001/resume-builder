class User < ApplicationRecord
    include ActiveModel::Validations
    VALID_EMAIL_REGEX =   /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    before_save { self.email = email.downcase }
    validates(:email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false })
    validates(:password, presence: true, length: { minimum: 8 })
    validates_confirmation_of :password
    # adds password fields
    has_secure_password

    has_one :profile, dependent: :destroy
   
    after_create :create_profile
end
