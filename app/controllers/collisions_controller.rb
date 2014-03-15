class CollisionsController < ApplicationController
  before_action :set_collision, only: [:show, :edit, :update, :destroy]

  def index
    @collisions = Collision.all
  end

  def show
  end

  def new
    @collision = Collision.new
  end

  def edit
  end

  def create
    @collision = Collision.new(collision_params)

    respond_to do |format|
      if @collision.save
        format.html { redirect_to @collision, notice: 'Collision was successfully created.' }
        format.json { render action: 'show', status: :created, location: @collision }
      else
        format.html { render action: 'new' }
        format.json { render json: @collision.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @collision.update(collision_params)
        format.html { redirect_to @collision, notice: 'Collision was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @collision.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @collision.destroy
    respond_to do |format|
      format.html { redirect_to collisions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collision
      @collision = Collision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collision_params
      params.require(:collision).permit(:date_of_collision, :time_of_collision, :location, :collision_type, :involved_with, :vehicle_one_direction, :vechicle_one_motion, :vehicle_two_direction, :vehicle_two_motion, :primary_cause, :injuries, :fatalities, :distance)
    end
end
