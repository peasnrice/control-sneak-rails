class GameroomsController < ApplicationController
  before_filter :authenticate_user!
  
  before_action :set_gameroom, only: [:show, :edit, :update, :destroy]

  def join
    @gameroom = Gameroom.find(params[:id])
    if @gameroom.users.where(:id => current_user.id).blank?
      @gameroom.users << current_user 
    end
    if @gameroom.save
      redirect_to @gameroom
    else
      format.html { redirect_to gamerooms_path, notice: 'something went wrong.' }
    end
  end

  # GET /gamerooms
  # GET /gamerooms.json
  def index
    @gamerooms = Gameroom.all
  end

  # GET /gamerooms/1
  # GET /gamerooms/1.json
  def show
  end

  # GET /gamerooms/new
  def new
    @gameroom = Gameroom.new
  end

  # GET /gamerooms/1/edit
  def edit
  end

  # POST /gamerooms
  # POST /gamerooms.json
  def create
    respond_to do |format|
      @gameroom = Gameroom.new(gameroom_params)
      @gameroom.host_id = current_user.id if current_user
      if @gameroom.save
        format.html { redirect_to @gameroom, notice: 'Gameroom was successfully created.' }
        format.json { render :show, status: :created, location: @gameroom }
      else
        format.html { render :new }
        format.json { render json: @gameroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamerooms/1
  # PATCH/PUT /gamerooms/1.json
  def update
    respond_to do |format|
      if @gameroom.update(gameroom_params)
        format.html { redirect_to @gameroom, notice: 'Gameroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @gameroom }
      else
        format.html { render :edit }
        format.json { render json: @gameroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamerooms/1
  # DELETE /gamerooms/1.json
  def destroy
    @gameroom.destroy
    respond_to do |format|
      format.html { redirect_to gamerooms_url, notice: 'Gameroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameroom
      @gameroom = Gameroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gameroom_params
      params.require(:gameroom).permit(:title, :host_id)
    end
end
