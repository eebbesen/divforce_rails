class CreateEmployers < ActiveRecord::Migration[5.0]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :industry
      t.boolean :certified
      t.string :notes

      t.timestamps
    end
  end
end
