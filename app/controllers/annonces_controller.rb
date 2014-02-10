class AnnoncesController < ApplicationController
  def new
  end

  def create
  	@annonce = Annonce.new(annonce_params)
  	@annonce.save
  	redirect_to action: :index
  end

  def show
  	@annonce = Annonce.find(params[:id])
  end

  def index
  	@annonce = Annonce.all
  end

  private

  def annonce_params
    params.require(:annonce).permit(:titre, :question)
  end

end
