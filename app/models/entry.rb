# == Schema Information
#
# Table name: entries
#
#  id               :integer          not null, primary key
#  healthy_thing_id :integer
#  date             :date
#  value            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Entry < ActiveRecord::Base
end
