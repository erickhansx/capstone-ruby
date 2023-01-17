require_relative '../src/music_album'
require_relative '../src/genre'

describe MusicAlbum do
  context 'Test MusicAlbum class and its methods' do
    before(:each) do
      author = { id: 572, first_name: 'Ndorrh', last_name: 'oswald beu', items: [] }
      source = { id: 76, name: 'Online shop', items: [] }
      publish_date = '10/10/2011'
      on_spotify = true
      label = { id: 119, title: 'Gift', color: 'Yellow', items: [] }
      @genre = Genre.new('Action')
      @music = MusicAlbum.new(@genre, author, source, label, publish_date, on_spotify)
    end

    it 'Returns the instance of class' do
      expect(@genre).to be_instance_of Genre
    end

    it 'check properties' do
      expect(@genre.name).to eql 'Action'
    end

    it 'Add item to array' do
      @genre.add_item(@music)
      len = @genre.items.length
      expect(len).to eql 2
    end
  end
end
