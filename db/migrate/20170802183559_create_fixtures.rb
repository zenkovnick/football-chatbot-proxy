class CreateFixtures < ActiveRecord::Migration[5.1]
  def change
    create_table :fixtures do |t|
      t.references :competiotion, index: true
      t.datetime :date
      t.integer :match_day
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :home_team_goals
      t.integer :away_team_goals
      t.timestamps
    end

    add_index :fixtures, :home_team_id
    add_index :fixtures, :away_team_id
  end
end
