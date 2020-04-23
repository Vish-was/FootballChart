namespace :create_team do
  desc "Create a Team from Dat file"
  task :get_team do
    date_file = TeamsService.new('public/football.dat')
    date_file.parse do |row|
      p row
    end
  end
end