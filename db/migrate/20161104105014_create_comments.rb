class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
    
    end
  end
end
