class CreateLeagueTables < ActiveRecord::Migration[5.1]
  def change
    create_table :league_tables do |t|
      t.references :team, index: true
      t.integer :played_games
      t.integer :point
      t.integer :goals
      t.integer :goals_against
      t.timestamps
    end
  end
end
