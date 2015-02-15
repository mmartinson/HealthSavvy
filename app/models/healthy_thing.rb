# == Schema Information
#
# Table name: healthy_things
#
#  id           :integer          not null, primary key
#  name         :string
#  value        :integer
#  daily_limit  :integer
#  challenge_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class HealthyThing < ActiveRecord::Base
end
