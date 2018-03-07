class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all

    render("reservations/index.html.erb")
  end

  def show
    @reservation = Reservation.find(params[:id])

    render("reservations/show.html.erb")
  end

  def new
    @reservation = Reservation.new

    render("reservations/new.html.erb")
  end

  def create
    @reservation = Reservation.new

    @reservation.dish_name = params[:dish_name]
    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.time = params[:time]

    save_status = @reservation.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/reservations/new", "/create_reservation"
        redirect_to("/reservations")
      else
        redirect_back(:fallback_location => "/", :notice => "Reservation created successfully.")
      end
    else
      render("reservations/new.html.erb")
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])

    render("reservations/edit.html.erb")
  end

  def update
    @reservation = Reservation.find(params[:id])

    @reservation.dish_name = params[:dish_name]
    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.time = params[:time]

    save_status = @reservation.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/reservations/#{@reservation.id}/edit", "/update_reservation"
        redirect_to("/reservations/#{@reservation.id}", :notice => "Reservation updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Reservation updated successfully.")
      end
    else
      render("reservations/edit.html.erb")
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])

    @reservation.destroy

    if URI(request.referer).path == "/reservations/#{@reservation.id}"
      redirect_to("/", :notice => "Reservation deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Reservation deleted.")
    end
  end
end
