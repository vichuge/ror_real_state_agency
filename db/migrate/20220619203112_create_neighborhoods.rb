class CreateNeighborhoods < ActiveRecord::Migration[7.0]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.string :desc_spa
      t.string :desc_eng
      t.timestamps
    end
  end
end
