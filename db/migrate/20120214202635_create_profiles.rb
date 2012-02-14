class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :bio
      t.date :born_on
      t.string :bmi
      t.string :ymca_name
      t.integer :user_id

      t.timestamps
    end
  end
end
