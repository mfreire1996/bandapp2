class EventsController < ApplicationController

	def index 
		@events = Event.all 
	end 

	def new 
		@event = Event.new 
	end 

	def create 
		@event = Event.create(date: params[:event][:date],alcohol_served: params[:event][:alcohol_served])
		redirect_to events_path 
	end 

	def edit 
		@event = Event.find(params[:id])
	end 

	def show 
		@event = Event.find(params[:id])
	end 

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path
	end

	def update
		@event = Event.find(params[:id])
		@event.update(date: params[:event][:date], alcohol_served: params[:event][:alcohol_served])
		redirect_to events_path
	end

end
