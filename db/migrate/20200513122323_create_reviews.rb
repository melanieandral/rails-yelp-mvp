class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.string :rating
      t.string :references

      t.timestamps
    end
  end
end
