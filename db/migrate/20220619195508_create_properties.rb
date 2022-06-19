class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.bigint :neighborhood_id
      t.bigint :agent_id
      t.bigint :type_id
      t.bigint :owner_id
      t.bigint :category_id
      t.decimal :price, precision: 10, scale: 2
      t.timestamps
    end
  end
end
