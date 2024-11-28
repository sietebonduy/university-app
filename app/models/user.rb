class User < ApplicationRecord
  has_secure_password

  validates :email,
            presence: { message: "не может быть пустым!" },
            uniqueness: { message: "уже занят!" },
            format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "должен быть валидным" }
end
