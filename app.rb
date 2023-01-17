require_relative './src/modules/read_write_file'
require_relative './src/modules/get_user_input'
require_relative './src/modules/read_file'

class App
  attr_accessor :genres, :authors, :sources, :labels, :books, :music_albums, :movies, :games

  def initialize
    @user_input = GetUserInput.new
    @lood_files = read
  end

  def print_dash(no_of_dash)
    dash = ''
    (0..no_of_dash).to_a.each do |_i|
      dash.concat('-')
    end
    puts dash
  end
end
