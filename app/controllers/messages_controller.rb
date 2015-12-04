class MessagesController < ApplicationController

  def index
    @message = Message.new
  end

  def new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      redirect_to '/messages', notice: "Thankyou for your message."
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end
end