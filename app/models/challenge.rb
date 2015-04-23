# == Schema Information
#
# Table name: challenges
#
#  id         :integer          not null, primary key
#  start_date :date
#  end_date   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Challenge < ActiveRecord::Base
end
