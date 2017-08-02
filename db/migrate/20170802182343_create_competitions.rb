class CreateCompetitions < ActiveRecord::Migration[5.1]
  def change
    create_table :competitions do |t|
      t.string :caption
      t.string :league
      t.integer :year
      t.integer :number_of_teams
      t.integer :number_of_games
      t.datetime :last_updated
    end
  end
end
