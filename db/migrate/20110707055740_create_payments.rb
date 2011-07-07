class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.string :product
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :product_type

      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
