class WeeksController < ApplicationController
  def index
    matching_weeks = Week.all

    @list_of_weeks = matching_weeks.order({ :created_at => :desc })

    render({ :template => "weeks/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_weeks = Week.where({ :id => the_id })

    @the_week = matching_weeks.at(0)

    render({ :template => "weeks/show" })
  end

  def create
    the_week = Week.new
    the_week.user_id = params.fetch("query_user_id")
    the_week.week = params.fetch("query_week")

    if the_week.valid?
      the_week.save
      redirect_to("/weeks", { :notice => "Week created successfully." })
    else
      redirect_to("/weeks", { :alert => the_week.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_week = Week.where({ :id => the_id }).at(0)

    the_week.user_id = params.fetch("query_user_id")
    the_week.week = params.fetch("query_week")

    if the_week.valid?
      the_week.save
      redirect_to("/weeks/#{the_week.id}", { :notice => "Week updated successfully."} )
    else
      redirect_to("/weeks/#{the_week.id}", { :alert => the_week.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_week = Week.where({ :id => the_id }).at(0)

    the_week.destroy

    redirect_to("/weeks", { :notice => "Week deleted successfully."} )
  end
end
