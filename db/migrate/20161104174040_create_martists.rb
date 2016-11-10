class CreateMartists < ActiveRecord::Migration
  def change
    create_table :martists do |t|
      t.string :lastname
      t.string :firstname
      t.string :email
      t.string :username
      t.text :profilemessage
      t.timestamps
      
    end
  end
end
