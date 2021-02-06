class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.decimal :rank, precision: 10, scale: 2
      t.belongs_to :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
