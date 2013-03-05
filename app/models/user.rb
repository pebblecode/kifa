class User < ActiveRecord::Base

  devise :omniauthable, :omniauth_providers => [:twitter]

  attr_accessible :username, :provider, :uid

  has_many :lectures

  validates :username,
    :presence => true,
    :length => {
      :maximum => 200
    }


    def self.find_for_twitter_oauth(access_token, signed_in_resource=nil)
      data = access_token.extra.raw_info
      if user = User.where(:username => data.screen_name).first
        user
      else
        User.create!(:username => data.screen_name)
      end
    end

end
