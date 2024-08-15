# == Schema Information
#
# Table name: reflection_questions
#
#  id         :bigint           not null, primary key
#  question   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ReflectionQuestion < ApplicationRecord
end
