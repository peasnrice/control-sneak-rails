class GamewordsController < ApplicationController
  before_filter :authenticate_user!
  
  before_action :set_gameword, only: [:show, :edit, :update, :destroy]
  
  # get gamerooms/:id/gamewords/new
  def new
    @gameword = Gameword.new
    @gameroom = Gameroom.find(params[:gameroom_id])
  end

  def index
    @gamewords = Gameword.all
    @gameroom = Gameroom.find(params[:gameroom_id])
  end

  def show
  	@gameword = Gameword.find(params[:id])
  end
    
  def create
  	@gameroom = Gameroom.find(params[:gameroom_id])
    respond_to do |format|
      @gameword = Gameword.new(gameword_params)
      @gameword.gameroom_id = @gameroom.id if @gameroom
      @gameword.sender_id = current_user.id if current_user
      @gameword.recipient_id = @gameword.recipient_id
      if @gameword.save
        format.html { redirect_to @gameword, notice: 'Gameword was successfully created.' }
        format.json { render :show, status: :created, location: @gameword }      	
      else
        format.html { render :new }
        format.json { render json: @gameword.errors, status: :unprocessable_entity }      	
      end
    end
  end
  
 	def update_status
		@gameword = Gameword.find(params[:gameword_id])
		@gameword.status = params[:status]
		if @gameword.save
			puts "saved"   
		end
	end
  
	# Use callbacks to share common setup or constraints between actions.
	def set_gameword
	  @gameword = Gameword.find(params[:id])
	end
  
	 # Never trust parameters from the scary internet, only allow the white list through.
	def gameword_params
	  params.require(:gameword).permit(:phrase, :recipient_id)
	end
  
end