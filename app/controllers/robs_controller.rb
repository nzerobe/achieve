class RobsController < ApplicationController
  before_action :set_rob, only: [:show, :edit, :update, :destroy] 
  #before_action :Force_login
  #before_action :authenticate_user!
  #skip_before_action :verify_authenticity_token
 
  
  def index
    @robs = Rob.all
    @search = Rob.search(params[:q])
    @robs = @search.result
    @favorite = Favorite.all
  end

  # Add
  def new
  @robs = Rob.new
  @robs.user_id = current_user.id
  
  
  end
  def create
    @robs = Rob.new(rob_params)
    @robs.user_id = current_user.id
    
    if @robs.save
      # Switch to the list screen and display a message saying "You have created new blog!"
      RobMailer.rob_mail(@robs).deliver
      redirect_to robs_path, Notice: "You have created new rob!"
    else
      # Redraw the input form.
      render 'new'
    end
  end
  
  def show
    # 追記する
     @robs = Rob.find(params[:id])
     @favorite = current_user.favorites.find_by(rob_id: @robs.id)
     
  end
  def edit
     @robs = Rob.find(params[:id])
  end
    
   def update
    @robs = Rob.find(params[:id])
    if @robs.update(rob_params)
      redirect_to robs_path, Notice: "You have edited this rob！"
    else
      render 'edit'
    end
   end
  
  def destroy
    @robs.destroy
    redirect_to robs_path, Notice: "You have deleted the rob!"
  end
  
  

  #Omitted
  private
  #Before_action : Set_rob, only: [:show, :edit, :update, :destroy] 
   def rob_params
    params.require(:rob).permit(:title, :content, :image)
   end
  
  def set_rob
    @robs = Rob.find(params[:id])
  end
  #def destroy
   # @robs.destroy
    #redirect_to robs_path, Notice: "You have deleted the rob!"
#  end
  
  
  #Omission
  
  #Omission
  #Omitted

end  