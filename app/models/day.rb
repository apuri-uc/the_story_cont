# == Schema Information
#
# Table name: days
#
#  id         :bigint           not null, primary key
#  day        :string
#  entries    :string
#  goal1      :string
#  goal2      :string
#  goal3      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  goal_id    :integer
#  week_id    :integer
#
class Day < ApplicationRecord
end
