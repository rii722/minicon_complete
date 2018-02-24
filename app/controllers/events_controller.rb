class EventsController < ApplicationController
  def index
    category_id = params[:id]
    keyword = params[:keyword]
    
    if category_id
      @events = Event.where('event_category_id = ?', category_id)
    elsif keyword
      @events = Event.where('title LIKE(?)', "%#{params[:keyword]}%")
    else 
      @events = Event.page(params[:page]).per(3).order("id DESC")
    end
    @event_categories = EventCategory.all
  end
  
  def show
    @events = Event.find(params[:id])
  end
  
  def search
    @events = Event.where('title LIKE(?)', "%#{params[:keyword]}%")
  end
end