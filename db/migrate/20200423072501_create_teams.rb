class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :played
      t.integer :win
      t.integer :loose
      t.integer :draw
      t.integer :goal_hit
      t.integer :goal_against
      t.float :points

      t.timestamps
    end
  end
end
