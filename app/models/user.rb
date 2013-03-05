class User < ActiveRecord::Base

  devise :omniauthable, :omniauth_providers => [:twitter]

  attr_accessible :username, :provider, :uid, :avatar, :name

  has_many :lectures, :foreign_key => 'lecturer_id'

  validates :username,
    :presence => true,
    :length => {
      :maximum => 200
    }


    def self.find_for_twitter_oauth(access_token, signed_in_resource=nil)
      data = access_token.extra.raw_info
      puts data
      if user = User.where(:username => data.screen_name).first
        user
      else
        User.create!(:username => data.screen_name, :avatar => data.profile_image_url, :name => data.name )
      end
    end

end
