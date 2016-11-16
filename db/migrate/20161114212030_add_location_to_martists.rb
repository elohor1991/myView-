class AddLocationToMartists < ActiveRecord::Migration
  def change
    add_column :martists, :country_located, :text
    add_column :martists, :culture, :text
  end
end
