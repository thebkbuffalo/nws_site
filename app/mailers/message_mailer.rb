class MessageMailer < ApplicationMailer

  # use your own email address here
  default :to => "evan.m.berg@gmail.com"

  def message_me(msg)
    @msg = msg

    mail from: @msg.email, subject: @msg.subject, body: @msg.content
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
