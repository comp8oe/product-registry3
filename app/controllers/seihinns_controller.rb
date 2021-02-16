class SeihinnsController < ApplicationController
  before_action :set_seihinn, only: %i[ show edit update destroy ]

  # GET /seihinns or /seihinns.json
  def index
    @seihinns = Seihinn.all
  end

  # GET /seihinns/1 or /seihinns/1.json
  def show
  end

  # GET /seihinns/new
  def new
    @seihinn = Seihinn.new
  end

  # GET /seihinns/1/edit
  def edit
  end

  # POST /seihinns or /seihinns.json
  def create
    @seihinn = Seihinn.new(seihinn_params)

    respond_to do |format|
      if @seihinn.save
        format.html { redirect_to @seihinn, notice: "Seihinn was successfully created." }
        format.json { render :show, status: :created, location: @seihinn }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @seihinn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seihinns/1 or /seihinns/1.json
  def update
    respond_to do |format|
      if @seihinn.update(seihinn_params)
        format.html { redirect_to @seihinn, notice: "Seihinn was successfully updated." }
        format.json { render :show, status: :ok, location: @seihinn }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @seihinn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seihinns/1 or /seihinns/1.json
  def destroy
    @seihinn.destroy
    respond_to do |format|
      format.html { redirect_to seihinns_url, notice: "Seihinn was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seihinn
      @seihinn = Seihinn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seihinn_params
      params.require(:seihinn).permit(:name, :price, :vendor)
    end
end
