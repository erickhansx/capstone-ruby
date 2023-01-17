require_relative './src/modules/read_write_file'
require_relative './src/author'
require_relative './src/genre'
require_relative './src/book'
require_relative './src/music_album'
require_relative './src/game'
require_relative './src/label'
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
  def get_attributes(thing)
    puts 'Follow the Prompt to Add a new music Album'
    new_genre = Genre.new(@user_input.genre(thing))
    @lood_files[:genres] << new_genre unless @lood_files[:genres].include?(new_genre)
    print_dash(130)
    new_author = @user_input.author
    author = Author.new(new_author[:f_name], new_author[:l_name])
    @lood_files[:authors] << author unless @lood_files[:authors].include?(author)
    print_dash(130)
    new_label = @user_input.label
    label = Label.new(new_label[:title], new_label[:color])
    @lood_files[:labels] << label unless @lood_files[:labels].include?(label)
    print_dash(130)
    [new_genre, author, label]
  end

def add_music_album
    arg = get_attributes('Music')
    new_date = @user_input.publish_date('On spotify')
    music = MusicAlbum.new(arg[0], arg[1], arg[3], arg[2], new_date[:date], new_date[:boolean])
    new_music = @user_input.parse_data(music)
    @lood_files[:music_albums] << new_music unless @lood_files[:music_albums].include?(new_music)
    print_dash(130)
    puts '                                                     music album added successfully                                    '
    print_dash(130)
  end







  def interface
    display_options = ["\n Welcome to Catalog of my things App! \n",
                       "\n Please Choose an option by entering a number \n\n", '1 - List all books', '2 - List all music albums', '3 - List of games', '4 - List all genres', '5 - List all labels', '6 - List all authors', '7 - Add a book', '8 - Add a game', '9 - Add music album ',
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
