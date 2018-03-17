class CreateJoys < ActiveRecord::Migration
  def change
    create_table :joys do |t|
      t.integer :number
      t.string :code

      t.timestamps null: false
    end
  end
end
