class AppAppointmentsController < ApplicationController
  before_action :set_app_appointment, only: [:show, :edit, :update, :destroy]

  # GET /app_appointments
  # GET /app_appointments.json
  def index
    @app_appointments = AppAppointment.all
  end

  # GET /app_appointments/1
  # GET /app_appointments/1.json
  def show
  end

  # GET /app_appointments/new
  def new
    @app_appointment = AppAppointment.new
  end

  # GET /app_appointments/1/edit
  def edit
  end

  # POST /app_appointments
  # POST /app_appointments.json
  def create
    @app_appointment = AppAppointment.new(app_appointment_params)

    respond_to do |format|
      if @app_appointment.save
        format.html { redirect_to @app_appointment, notice: 'App appointment was successfully created.' }
        format.json { render :show, status: :created, location: @app_appointment }
      else
        format.html { render :new }
        format.json { render json: @app_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_appointments/1
  # PATCH/PUT /app_appointments/1.json
  def update
    respond_to do |format|
      if @app_appointment.update(app_appointment_params)
        format.html { redirect_to @app_appointment, notice: 'App appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_appointment }
      else
        format.html { render :edit }
        format.json { render json: @app_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_appointments/1
  # DELETE /app_appointments/1.json
  def destroy
    @app_appointment.destroy
    respond_to do |format|
      format.html { redirect_to app_appointments_url, notice: 'App appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_appointment
      @app_appointment = AppAppointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_appointment_params
      params.require(:app_appointment).permit(:AppointmentBody, :DatenTime)
    end
end
