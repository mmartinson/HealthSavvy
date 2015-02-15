# == Schema Information
#
# Table name: challenge_user_registrations
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  challenge_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ChallengeUserRegistration < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
end
