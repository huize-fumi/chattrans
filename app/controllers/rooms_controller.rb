# frozen_string_literal: true

class RoomsController < ApplicationController
  def index
    # @room = Room.find(params[:room_id])
    @rooms = Room.all.order(id: 'DESC')
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end

  private

  def room_params
    params.require(:room).permit(:title, user_ids: [])
  end
end
