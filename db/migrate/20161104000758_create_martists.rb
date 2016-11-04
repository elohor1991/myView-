class CreateMartists < ActiveRecord::Migration
  def change
    create_table :martists do |t|
      t.string :displayname
      t.text :profilemessage
      t.text :citylocated
      t.string :email
      t.timestamps
      
    end
  end
end
