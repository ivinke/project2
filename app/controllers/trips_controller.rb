 class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])

  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new
    @trip.from_city_id = params[:from_city_id]
    @trip.to_city_id = params[:to_city_id]
    @trip.user_id = params[:user_id]
    @trip.time = params[:time]
    @trip.cost = params[:cost]
    @trip.notes = params[:notes]
    @trip.photo = params[:photo]
    @trip.transportation = params[:transportation]
    @trip.average_rating = params[:average_rating]

    if @trip.save
      redirect_to "/trips", :notice => "Trip created successfully."
    else
      render 'new'
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])

    @trip.from_city_id = params[:from_city_id]
    @trip.to_city_id = params[:to_city_id]
    @trip.user_id = params[:user_id]
    @trip.time = params[:time]
    @trip.cost = params[:cost]
    @trip.notes = params[:notes]
    @trip.photo = params[:photo]
    @trip.transportation = params[:transportation]
    @trip.average_rating = params[:average_rating]



    if @trip.save
      redirect_to "/trips", :notice => "Trip updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @trip = Trip.find(params[:id])

    @trip.destroy

    redirect_to "/trips", :notice => "Trip deleted."
  end

  def search

    @cityfrom = City.find_by({ :name => params[:first_city].downcase })
    @cityto = City.find_by({ :name => params[:second_city].downcase })

    if @cityto.present? && @cityfrom.present?
      @tripsnew = Trip.where({ :from_city_id => @cityfrom.id, :to_city_id => @cityto.id })
    end

    if @tripsnew.present?
      render "search"
    else
      redirect_to "/", :notice => "No trip has been done between those cities."
    end

  end
end
