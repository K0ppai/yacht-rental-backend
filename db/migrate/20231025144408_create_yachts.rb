class CreateYachts < ActiveRecord::Migration[7.0]
  def change
    create_table :yachts do |t|
      t.string :name
      t.string :description
      t.string :model
      t.string :image
      t.decimal :fee_per_day

      t.timestamps
    end
  end
end
