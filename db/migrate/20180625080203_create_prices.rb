class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.float :price
      t.string :name

      t.timestamps
    end
  end
end
