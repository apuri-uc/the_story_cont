# == Schema Information
#
# Table name: reflection_answers
#
#  id                     :bigint           not null, primary key
#  answer                 :string
#  question               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  reflection_question_id :integer
#  user_id                :integer
#  week_id                :integer
#
class ReflectionAnswer < ApplicationRecord
end
