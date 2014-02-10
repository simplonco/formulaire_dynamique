class AnnoncesController < ApplicationController
  def new
  end

  def create
  	@annonce = Annonce.new(params[:annonce])
  	@annonce.save
  	redirect_to action: :index
  end

  def show 
  end

  def index
  	@annonce = Annonce.all
  end

  private

  def annonce_params
    params.require(:annonce).permit(:titre, :question)
  end

end
