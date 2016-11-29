class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :summary
      t.timestamps
    end
  end
end
