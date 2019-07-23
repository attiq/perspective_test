class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def self.create_or_update(user_id, question_id, value)
    Answer.where(user_id: user_id, question_id: question_id).first_or_create do |answer|
      answer.value = value
    end
  end
end
