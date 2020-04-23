namespace :create_team do
  desc "Create a Team from Dat file"
  task :get_team do
    date_file = TeamsService.new('public/football.dat')
    date_file.parse do |row|
      team = Team.find_or_create_by!(team_name: row["team"].split('. ')[1])
      team.update!(played: row['p'], win: row['w'], loose: row['l'], draw: row['d'], goal_hit: row['f'], goal_against: row['a'], points: row['pts'])
    end
  end
end