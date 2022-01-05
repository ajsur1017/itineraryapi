class CreateSaturdays < ActiveRecord::Migration[6.1]
  def change
    create_table :saturdays do |t|
      t.string :name
      t.string :details
      t.string :time

      t.timestamps
    end
  end
end
