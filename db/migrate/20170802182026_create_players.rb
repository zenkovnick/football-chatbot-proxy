class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.integer :jersey_number
      t.datetime :date_of_birth
      t.string :nationality
      t.datetime :contract_until
      t.integer :market_value
      t.timestamps
    end
  end
end
