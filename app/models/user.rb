class User < ApplicationRecord

    VALID_EMAIL_REGEX =  /\A[^@\s]+@[^@\s]+\z/
    before_save { self.email = email.downcase }
    validates(:email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false })
    validates(:password, presence: true, length: { minimum: 8 })

    # adds password fields
    has_secure_password

    has_one :profile, dependent: :destroy
   
    after_create :create_profile
end
