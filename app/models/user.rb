class User < ActiveRecord::Base

  has_many :quizes
  attr_accessible :provider, :uid, :name, :oauth_token, :email, :age, :location, :party

def self.from_omniauth(auth)

    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.save!
    end
  end
end