class AddColumnToArtistsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :genre, :string
  end
end
