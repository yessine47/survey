class SondageController < ApplicationController
  def index
    @sondage = Sondage.all
    if @sondage
      render json: {
        sondage: @sondage
      }
    else
      render json: {
        status: 500,
        errors: ['no sondage found']
      }
    end
    end
  def new
    @sondage =Sondage.new
  end

  def create
    @sondage = Sondage.new(sondage_params)
    if @sondage.save
      render json: {
        status: :created,
        user: @sondage
    }
    else
      render json: {
        status: 500,
        errors: @sondage.errors.full_messages
      }
    end
  end
  def show
    @sondage = Sondage.find(params[:id])
   if @sondage
      render json: {
        sondage: @sondage
      }
    else
      render json: {
        status: 500,
        errors: ['survey not found']
      }
    end
  end 

  def destroy
    @sondage = Sondage.find(params[:id])
    @sondage.destroy

    # redirect_to root_path
  end

  private
  
  def sondage_params
    params.require(:sondage).permit(:q_nbr, :w_nbr, :p_nbr)
  end

end
