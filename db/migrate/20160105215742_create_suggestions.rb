class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :name, null:false
      t.belongs_to :puppy, null:false
      t.timestamps null: false
    end
  end
end
