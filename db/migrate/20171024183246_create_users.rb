class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :review
      t.integer :rating
      t.belongs_to :book, foreign_key: "book_id"
    end
  end
end
