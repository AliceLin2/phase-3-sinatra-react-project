class CreateFruits < ActiveRecord::Migration[6.1]
  def change
    create_table :fruits do |t|
      t.string :name
      t.integer :price
      t.integer :stock
      t.string :health_benefit
    end
  end
end
