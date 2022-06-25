class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      # t.references :asignation, null: false, foreign_key: {to_table: :properties :neighborhoods}, index: true
      t.string :name
      t.string :asignation
      t.boolean :main
      t.timestamps
    end
  end
end
