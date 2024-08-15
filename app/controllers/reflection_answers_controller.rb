class ReflectionAnswersController < ApplicationController
  def index
    matching_reflection_answers = ReflectionAnswer.all

    @list_of_reflection_answers = matching_reflection_answers.order({ :created_at => :desc })

    render({ :template => "reflection_answers/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_reflection_answers = ReflectionAnswer.where({ :id => the_id })

    @the_reflection_answer = matching_reflection_answers.at(0)

    render({ :template => "reflection_answers/show" })
  end

  def create
    the_reflection_answer = ReflectionAnswer.new
    the_reflection_answer.reflection_question_id = params.fetch("query_reflection_question_id")
    the_reflection_answer.user_id = params.fetch("query_user_id")
    the_reflection_answer.week_id = params.fetch("query_week_id")
    the_reflection_answer.answer = params.fetch("query_answer")
    the_reflection_answer.question = params.fetch("query_question")

    if the_reflection_answer.valid?
      the_reflection_answer.save
      redirect_to("/reflection_answers", { :notice => "Reflection answer created successfully." })
    else
      redirect_to("/reflection_answers", { :alert => the_reflection_answer.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_reflection_answer = ReflectionAnswer.where({ :id => the_id }).at(0)

    the_reflection_answer.reflection_question_id = params.fetch("query_reflection_question_id")
    the_reflection_answer.user_id = params.fetch("query_user_id")
    the_reflection_answer.week_id = params.fetch("query_week_id")
    the_reflection_answer.answer = params.fetch("query_answer")
    the_reflection_answer.question = params.fetch("query_question")

    if the_reflection_answer.valid?
      the_reflection_answer.save
      redirect_to("/reflection_answers/#{the_reflection_answer.id}", { :notice => "Reflection answer updated successfully."} )
    else
      redirect_to("/reflection_answers/#{the_reflection_answer.id}", { :alert => the_reflection_answer.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_reflection_answer = ReflectionAnswer.where({ :id => the_id }).at(0)

    the_reflection_answer.destroy

    redirect_to("/reflection_answers", { :notice => "Reflection answer deleted successfully."} )
  end
end
