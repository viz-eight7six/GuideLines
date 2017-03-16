class User < ActiveRecord::Base

  attr_reader :password

	validates :username, :password_digest, :session_token, presence: true
	validates :username, uniqueness: true
	validates :password, length: { minimum: 6, allow_nil: true }

	after_initialize :ensure_session_token

  has_many :guides,
  class_name: :Guide,
  primary_key: :id,
  foreign_key: :author_id

	def password=(password)
    @password = password
		self.password_digest = BCrypt::Password.create(password)
	end

	def self.find_by_credentials(username, password)
		@user = User.find_by(username: username)
		return nil unless @user
		@user.is_password?(password) ? @user : nil
	end

	def is_password?(password)
		BCrypt::Password.new(self.password_digest).is_password?(password)
	end

	def reset_session_token!
		self.session_token = new_session_token
		self.save
		self.session_token
	end

	private

	def ensure_session_token
		self.session_token ||= new_session_token
	end

	def new_session_token
		SecureRandom.urlsafe_base64
	end


end
