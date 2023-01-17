require_relative '../src/book'

describe Book do
  context 'Test Book class and its methods' do
    before(:each) do
      genre = {id: 384, name: "Comedy", items: [] }
      author = { id: 572, first_name: "Ndorrh",  last_name: "oswald beu", items: [] }
      source = {id: 76, name: "Friend", items: []}
      label = { id: 119, title: "New", color: "Green", items: [] }
      publish_date = "10/102015"
      cover_state = "good"
      publisher = "oswald house"
      @book = Book.new(genre, author, source, label, publish_date, publisher, cover_state)
    end

    it 'should be able to acces name in genre object' do
      expect(@book.genre[:name]).to eq 'Comedy'
    end

      it 'Returns the instance of class' do
    expect(@book).to be_instance_of Book
  end

  it 'Return an empty array' do
    expect(@book.genre[:items]).to eql []
  end

  it 'Return true if cover_state is good' do
    expect(@book.move_to_archive).to eql false
  end
  end
end