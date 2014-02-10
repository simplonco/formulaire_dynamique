class ReponsesController < ApplicationController
  
	def new
		@annonce = Annonce.find(params[:annonce_id])
  	end

	def create
		@annonce = Annonce.find(params[:annonce_id])
		@reponse = @annonce.reponses.create(params[:reponse].permit(:texte_reponse))
		redirect_to annonces_path
	end

	def show
		@annonce = Annonce.find(params[:annonce_id])
	end

	def index
		@annonce = Annonce.find(params[:annonce_id])
	end

end
