class AddAnnonceReferenceToReponses < ActiveRecord::Migration
  def change
  	add_reference :reponses, :annonce, index: true
  end
end
