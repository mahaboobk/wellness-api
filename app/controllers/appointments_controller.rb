class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show update destroy ]

  # GET /appointments
  def index
    @appointments = Appointment.all

    render json: @appointments
  end

  # GET /appointments/1
  def show
    render json: @appointment
  end

  # POST /appointments
def create
  @appointment = Appointment.new(appointment_params)
  if @appointment.save
    ActionCable.server.broadcast("appointments", {
      action: "create",
      data: @appointment.as_json
    })
    render json: @appointment, status: :created
  else
    render json: @appointment.errors, status: :unprocessable_entity
  end
end



  # PATCH/PUT /appointments/:id
  def update
    if @appointment.update(appointment_params)
      # Broadcast updated appointment to ActionCable subscribers
      ActionCable.server.broadcast("appointments", {
        action: "update",
        data: @appointment.as_json
      })

      render json: @appointment, status: :ok
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end


  # DELETE /appointments/1
  def destroy
    @appointment.destroy!
    ActionCable.server.broadcast("appointments", { action: "destroy", data: @appointment })
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.expect(appointment: [ :client_id, :time ])
    end
end
