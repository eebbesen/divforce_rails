class CreateReqs < ActiveRecord::Migration[5.0]
  def change
    create_table :reqs do |t|
      t.belongs_to :employer, index: true
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
