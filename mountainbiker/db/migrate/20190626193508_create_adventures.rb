class CreateAdventures < ActiveRecord::Migration[5.2]
  def change
    create_table :adventures do |t|
      t.string :name
      t.string :location
      t.string :image
      t.string :summary
      t.integer :length
      t.references :user
      t.references :path

      t.timestamps
    end
  end
end
