class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name,null: false 
      t.string :author,null: false
      t.text    :information
      t.date    :date
      t.integer :category_id
      t.integer :status_id
      t.references :user ,foreign_key: true
      t.timestamps
    end
  end
end
