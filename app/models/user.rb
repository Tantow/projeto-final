class User < ApplicationRecord
has_many :teams_users

has_secure_password

validates :full_name, presence: true, length: { in: 2 .. 100 }
validates :email, presence: true, length: { in: 5 .. 40 }, uniqueness: true,
format: { with: /\A[a-z]{2,20}\.[a-z]{2,20}\@injunior.com.br\z/,
message: "Por favor, insira um email nome.sobrenome@injunior.com.br"}
validates :password, length: { in: 6 .. 12 }, allow_nil: true

end
