require("rspec")
require("scrabble.rb")

describe("String#scrabble") do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns a scrabble score for a letter") do
    expect("d".scrabble()).to(eq(2))
  end
  it("returns a scrabble score for a letter") do
    expect("q".scrabble()).to(eq(10))
  end
  it("returns scorefor a word") do
    expect("daq".scrabble()).to(eq(13))
  end
end
