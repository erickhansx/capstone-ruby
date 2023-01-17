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










  def interface
    display_options = ["\n Welcome to Catalog of my things App! \n",
                       "\n Please Choose an option by entering a number \n\n", '1 - List all books', '2 - List all music albums',
                       '3 - List all movies', '4 - List of games', '5 - List all genres', '6 - List all labels', ' - List all authors',
                       '8 - List all sources', '9 - Add a book', '10 - Add a movie', '11 - Add a game', '12 - Add music album ',
                       '0 - Enter 0 to exit app']
    display_options.each do |option|
      puts option
    end
  end

  def write_files()
    write_json_file('database/books.json', @lood_files[:books])
    write_json_file('database/music_albums.json', @lood_files[:music_albums])
    write_json_file('database/movies.json', @lood_files[:movies])
    write_json_file('database/games.json', @lood_files[:games])
    write_json_file('database/genres.json', @lood_files[:genres])
    write_json_file('database/authors.json', @lood_files[:authors])
    write_json_file('database/labels.json', @lood_files[:labels])
    write_json_file('database/sources.json', @lood_files[:sources])
  end
end
