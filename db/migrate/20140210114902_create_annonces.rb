class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.string :titre
      t.text :question

      t.timestamps
    end
  end
end
