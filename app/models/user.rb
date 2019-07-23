class User < ApplicationRecord
  has_many :answers, dependent: :destroy

  class << self

    # Process the user inputs and generates results
    def generate_results params
      user = User.where(email: params[:email]).first_or_create

      results = {}
      Question.all.each do |question|
        value = params["answer_#{question.id}"].to_i

        # Determine where a user falls in the particular dimension
        dimension_left = question.dimension.first
        dimension_right = question.dimension.last

        results.merge!(dimension_left => 0) unless results[dimension_left].present?
        results.merge!(dimension_right => 0) unless results[dimension_right].present?

        results[dimension_left], results[dimension_right] = dimension_values(question.direction,
                                                                             value,
                                                                             results[dimension_left],
                                                                             results[dimension_right])

        # Save user answer in database
        Answer.create_or_update(user.id, question.id, value)
      end

      # Update user MBTI
      user.update!(mbti: generate_mbti(results))
      return user
    end

    def dimension_values(direction, value, dimension_left, dimension_right)
      value = value*100/7
      if direction == "-1"
        dimension_left = value if value > dimension_left
      elsif direction == "1"
        dimension_right = value if value > dimension_right
      end
      return dimension_left, dimension_right
    end

    def generate_mbti(results)
      mbti = ""
      dimensions = Question.all.map(&:dimension).uniq
      dimensions.each do |dimension|
        mbti += results[dimension.first] >= results[dimension.last] ? dimension.first : dimension.last
      end
      return mbti
    end
  end
end