class CreateRecruiters < ActiveRecord::Migration[5.0]
  def change
    create_table :recruiters do |t|
      t.string :name
      t.boolean :certified
      t.string :notes

      t.timestamps
    end
  end
end
