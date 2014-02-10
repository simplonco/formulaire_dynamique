class CreateReponses < ActiveRecord::Migration
  def change
    create_table :reponses do |t|
      t.text :texte_reponse

      t.timestamps
    end
  end
end
