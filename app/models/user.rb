class User < ActiveRecord::Base
  has_secure_password
  has_many :favs, dependent: :destroy
end
