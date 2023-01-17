require_relative '../src/music_album'

describe MusicAlbum do
  context 'Test MusicAlbum class and its methods' do
    before(:each) do
      genre = { id: 384, name: 'Action', items: [] }
      author = { id: 572, first_name: 'Ndorrh', last_name: 'oswald beu', items: [] }
      source = { id: 76, name: 'Online shop', items: [] }
      label = { id: 119, title: 'Gift', color: 'Yellow', items: [] }
      publish_date = '10/10/2011'
      on_spotify = true
      @music = MusicAlbum.new(genre, author, source, label, publish_date, on_spotify)
    end

    it 'should be able to acces title in Label object' do
      expect(@music.label[:title]).to eq 'Gift'
    end

    it 'Returns the instance of class' do
      expect(@music).to be_instance_of MusicAlbum
    end

    it 'Return an empty array' do
      expect(@music.genre[:items]).to eql []
    end

    it 'Return true if on spotify is true and Publish date is older than 10 years' do
      expect(@music.move_to_archive).to eql true
    end
  end
end
