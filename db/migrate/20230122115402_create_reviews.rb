class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|

      t.integer :customer_id, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.integer :degree_of_roasting, null: false
      t.integer :acidity, null: false
      t.integer :bitterness, null: false
      t.integer :depth, null: false
      t.boolean :publish_settings, null: false, default: true

      t.timestamps
    end
  end
end
