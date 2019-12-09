class CreateFestivalsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :festivals do |t|
      t.string :name
    end
  end
end
