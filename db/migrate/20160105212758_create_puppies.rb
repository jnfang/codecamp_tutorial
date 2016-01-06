class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.string :color
      t.string :owner, null:false
      t.text :description
      t.timestamps null: false
    end
  end
end
