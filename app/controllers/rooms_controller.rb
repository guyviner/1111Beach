class RoomsController < ApplicationController

  before_action :authenticate_user

  def show
    @messages = Message.order(created_at: :DESC)
  end

  def create
    @message = Message.new
  end
end
