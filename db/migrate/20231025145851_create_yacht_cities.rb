class CreateYachtCities < ActiveRecord::Migration[7.0]
  def change
    create_table :yacht_cities do |t|
      t.boolean :is_available, default: true
      t.references :city, null: false, foreign_key: true
      t.references :yacht, null: false, foreign_key: true

      t.timestamps
    end
  end
end
