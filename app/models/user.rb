class User < ApplicationRecord
  has_secure_password
  validates :username, length: { minimum: 2, maximum: 25}
  validates :email,
  format: { with: /\A\S+@.+\.\S+\z/, message: "Invalid"  },
            uniqueness: { case_sensitive: false },
            length: { maximum: 350 }
end


# u= User.create(username: "beep10", email: "beep@gmail.com").save()