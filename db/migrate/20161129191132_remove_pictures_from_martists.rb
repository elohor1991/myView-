class RemovePicturesFromMartists < ActiveRecord::Migration
  def change
    remove_column :martists, :picture, :string
  end
end
