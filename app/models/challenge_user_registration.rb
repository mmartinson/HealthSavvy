class ChallengeUserRegistration < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
end
