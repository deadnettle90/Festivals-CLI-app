class AddColumnToFestivalsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :festivals, :country, :string
  end
end
