# == Schema Information
#
# Table name: weeks
#
#  id         :bigint           not null, primary key
#  week       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Week < ApplicationRecord
end
