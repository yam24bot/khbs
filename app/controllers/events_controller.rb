class EventsController < ApplicationController

  before_action :set_event, only:[:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def edit
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(video_review_params)

    if @event.save
      redirect_to @event, success: 'Событие успешно создано'
    else
      render :new
    end
  end

  def update
    if @event.update_attributes(video_review_params)
      redirect_to @event, info: 'Событие успешно обновлено'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    # redirect_to posts_path, success: 'post successfully deleted'
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :address, :date)
  end
end
