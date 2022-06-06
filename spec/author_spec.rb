require './lib/book'
require './lib/author'

RSpec.describe Author do
  it "exists" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte).to be_a(Author)
  end

  it 'author has name and no books' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    expect(charlotte_bronte.books).to eq([])
  end

  it "author can write books" do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    expect(jane_eyre.class).to be_a(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")
  end

  it 'author can write multiple books' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")

    expect(charlotte_bronte.books).to eq([jane_eyre, villette])
  end
end