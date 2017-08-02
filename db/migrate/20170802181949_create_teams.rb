class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.references :competition, index: true
      t.string :name
      t.string :short_name
      t.integer :squad_market_value
      t.string :crest_url
      t.timestamps
    end
  end
end
