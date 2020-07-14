class MessagesController < ApplicationController
  before_action :set_calendar

  def index
    @message = Message.new
    @messages = @calendar.messages.includes(:user)
    @users = @calendar.group_users
  end

  def create
    @message = @calendar.messages.new(message_params)
    if @message.save
      redirect_to calendar_messages_path(@calendar)
    else
      @messages = @calendar.messages.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

  def set_calendar
    @calendar = Calendar.find(params[:calendar_id])
  end
end
