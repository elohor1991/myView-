class AddMartistIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :martist_id, :integer
  end
end
