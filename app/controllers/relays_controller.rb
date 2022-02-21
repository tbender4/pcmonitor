class RelaysController < ApplicationController
  before_action :set_relay, only: %i[ show edit update destroy ]

  # GET /relays or /relays.json
  def index
    @relays = Relay.all
  end

  # GET /relays/1 or /relays/1.json
  def show
  end

  # GET /relays/new
  def new
    @relay = Relay.new
  end

  # GET /relays/1/edit
  def edit
  end

  # POST /relays or /relays.json
  def create
    @relay = Relay.new(relay_params)

    respond_to do |format|
      if @relay.save
        format.html { redirect_to relay_url(@relay), notice: "Relay was successfully created." }
        format.json { render :show, status: :created, location: @relay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @relay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relays/1 or /relays/1.json
  def update
    respond_to do |format|
      if @relay.update(relay_params)
        format.html { redirect_to relay_url(@relay), notice: "Relay was successfully updated." }
        format.json { render :show, status: :ok, location: @relay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @relay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relays/1 or /relays/1.json
  def destroy
    @relay.destroy

    respond_to do |format|
      format.html { redirect_to relays_url, notice: "Relay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relay
      @relay = Relay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def relay_params
      params.require(:relay).permit(:name, :mac_address)
    end
end
