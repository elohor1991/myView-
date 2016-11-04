class CreateCategors < ActiveRecord::Migration
  def change
    create_table :categors do |t|
      t.string :categoryname
      t.text :others
      t.timestamps
    end
  end
end
