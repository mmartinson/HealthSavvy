# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  email             :string
#  name              :string
#  profile_image_url :string
#  admin             :boolean          default("false")
#  provider          :string
#  uid               :string
#  created_at        :datetime
#  updated_at        :datetime
#

class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    find_by(provider: auth[:provider], uid: auth[:uid]) || self.create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end   
  end
end
