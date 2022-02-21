class CreateStudios < ActiveRecord::Migration[6.1]
  def change
    create_table :studios do |t|
      t.string :address
      t.string :title
      t.string :description
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.date :available

      t.timestamps
    end
  end
end
