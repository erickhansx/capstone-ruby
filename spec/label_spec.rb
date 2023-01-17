require_relative '../src/music_album'
require_relative '../src/label'

describe MusicAlbum do
  context 'Test MusicAlbum class and its methods' do
    before(:each) do
      genre = {id: 384, name: "Action", items: [] }
      author = { id: 572, first_name: "Ndorrh",  last_name: "oswald beu", items: [] }
      source = {id: 76, name: "Online shop", items: []}
      publish_date = "10/10/2011"
      on_spotify = true
      @label = Label.new('Gift', 'pink')
      @music = MusicAlbum.new(genre, author, source, @label, publish_date, on_spotify)
    end

    it 'Returns the instance of class' do
    expect(@label).to be_instance_of Label
  end

     it 'check properties' do
    expect(@label.color).to eql 'pink'
  end

  it 'Add item to array' do
    @label.add_item(@music)
    len = @label.items.length
    expect(len).to eql 1
  end
  end
end