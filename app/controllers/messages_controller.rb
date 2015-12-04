class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.message_me(@message).deliver_now
      redirect_to '/', notice: "Thank You!  We have received your message and will get back to you ASAP."
    else
      render :new
    end
  end

  private
    def message_params
      params.require(:message).permit(:name, :email, :subject, :content)
    end
end
