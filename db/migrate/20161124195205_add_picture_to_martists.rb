class AddPictureToMartists < ActiveRecord::Migration
  def change
    add_column :martists, :picture, :string
  end
end
