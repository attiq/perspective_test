class PerspectivesController < ApplicationController
  def index
    @questions = Question.all
  end

  def results
    @user = User.generate_results(params)
  end
end
