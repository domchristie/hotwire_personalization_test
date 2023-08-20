class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @message = current_user.messages.create!(message_params)
    head :created # handled by Message broadcast
  end

  def show
    @message = Message.find(params[:id])
    # authorize user can read message
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
