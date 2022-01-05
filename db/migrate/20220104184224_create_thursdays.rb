class CreateThursdays < ActiveRecord::Migration[6.1]
  def change
    create_table :thursdays do |t|
      t.string :name
      t.string :details
      t.string :time

      t.timestamps
    end
  end
end
