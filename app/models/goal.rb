# == Schema Information
#
# Table name: goals
#
#  id         :bigint           not null, primary key
#  goal       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Goal < ApplicationRecord
end
