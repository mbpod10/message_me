class User < ApplicationRecord
  has_many :messages
  has_secure_password
  before_save { self.email = email.downcase }
  validates :username, length: { minimum: 2, maximum: 25}
  validates :email,
  format: { with: /\A\S+@.+\.\S+\z/, message: "Invalid"  },
            uniqueness: { case_sensitive: false },
            length: { maximum: 350 }
  validates :password, presence: true
end


# u= User.create(username: "beep10", email: "beep@gmail.com").save()