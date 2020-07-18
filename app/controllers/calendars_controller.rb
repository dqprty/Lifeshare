class CalendarsController < ApplicationController
  before_action :set_group

  def index
    @calendars = @group
  end

  def new
    @calendar = Calendar.new
    @calendars = @group.calendars.includes(:user)
  end

  def create
    @calendar = @group.calendars.new(calendar_params)
    if @calendar.save
      redirect_to group_calendars_path(@group, @calendar)
    else
      render :new
    end
  end

  private

  def calendar_params
    params.require(:calendar).permit(:date).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
end
