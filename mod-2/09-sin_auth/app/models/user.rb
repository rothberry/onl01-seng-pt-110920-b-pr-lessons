class User < ActiveRecord::Base
  has_many :characters
  has_secure_password

  # def password=(password_digest)
  #   @hashed_and_secret = password_digest.passwordSecrefier
  # end
end
