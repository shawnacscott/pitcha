class User < ActiveRecord::Base
  has_secure_password
  has_many :favs, dependent: :destroy
  has_many :grids, dependent: :destroy

  def feed
    Grid.where("user_id = ?", id)
  end
end
