class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name,null: false 
      t.text    :information
      t.integer :category_id,null: false 
      t.references :user ,foreign_key: true
      t.timestamps
    end
  end
end
