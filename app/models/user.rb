class User < ApplicationRecord
	has_secure_password
	mount_uploader :avatar, AvatarUploader

	has_many :teams_users
	has_many :teamprojects
	
	has_many :directions_users

	has_secure_password

	validates :full_name, presence: true, length: { in: 2 .. 100 }
	validates :email, presence: true, length: { in: 5 .. 40 }, uniqueness: true,
	format: { with: /\A[a-z]{2,20}\.[a-z]{2,20}\@injunior.com.br\z/,
	message: "E-mail inválido."}
	validates :password, length: { in: 6 .. 12 }, allow_nil: true
	validate :picture_size

	def picture_size
		if avatar.size > 3.megabytes
			errors.add(:avatar, "Imagem muito grande. (max.:3MB)")
		end
	end




	before_create :set_ativo_default

	private
		def set_ativo_default
			self.ativo = true
		end

end
