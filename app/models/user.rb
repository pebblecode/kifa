class User < ActiveRecord::Base
  attr_accessible :username

  has_many :lectures
  validates :username,
    :presence => true,
    :length => {
      :maximum => 200
    }

end
