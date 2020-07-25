class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews, id: false do |t|
      t.string :review, limit: 1024, null: false
      t.references :book, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.index [:book_id, :user_id], unique: true
      t.timestamps
    end
  end
end