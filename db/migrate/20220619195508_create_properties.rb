class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      # t.references :neighborhood, null: false, foreign_key: true, index: true
      # t.references :agent, null: false, foreign_key: true, index: true
      # t.references :type, null: false, foreign_key: true, index: true
      # t.references :owner, null: false, foreign_key: true, index: true
      # t.references :category, null: false, foreign_key: true, index: true
      t.decimal :surface_m, precision: 10, scale: 2
      t.decimal :front_m, precision: 10, scale: 2
      t.decimal :back_m, precision: 10, scale: 2
      t.decimal :build_m, precision: 10, scale: 2
      t.integer :visits
      t.string :name_spa
      t.string :name_eng
      t.string :desc_spa
      t.string :desc_eng
      t.string :notes
      t.boolean :sell
      t.boolean :rent
      t.decimal :price_sell, precision: 10, scale: 2
      t.decimal :price_rent, precision: 10, scale: 2
      t.string :terms_and_c
      t.integer :habs_num
      t.integer :wc_num
      t.integer :park_num
      t.string :url_video
      t.timestamps
    end
  end
end
