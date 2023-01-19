def read
  {
    books: read_json_file('database/books.json') == '404' ? [] : read_json_file('database/books.json'),
    music_albums: read_json_file('database/music_albums.json') == '404' ? [] : read_json_file('database/music_albums.json'),
    games: read_json_file('database/games.json') == '404' ? [] : read_json_file('database/games.json'),
    genres: read_json_file('database/genres.json') == '404' ? [] : read_json_file('database/genres.json'),
    authors: read_json_file('database/authors.json') == '404' ? [] : read_json_file('database/authors.json'),
    labels: read_json_file('database/labels.json') == '404' ? [] : read_json_file('database/labels.json')
  }
end
