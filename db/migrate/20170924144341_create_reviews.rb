class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.string :reviewee
      t.string :text
      t.references :reviewable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
