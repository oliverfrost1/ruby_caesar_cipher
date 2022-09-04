require "./lib/script.rb"

describe "Ceasar cipher" do 
  it "shifts one character" do
    expect(caesar_cipher("a",1)).to eql("b")
  end

  it "ignores special characters" do 
    expect(caesar_cipher("a,",1)).to eql("b,")
  end

  it "can skip from z to a" do
    expect(caesar_cipher("z",1)).to eql("a")
  end

  it "can do negative shifting" do
    expect(caesar_cipher("c",-1)).to eql("b")
  end

  it "can do negative shifting over a" do
    expect(caesar_cipher("a",-1)).to eql("z")
  end

  it "can handle really big shifts over 25 characters" do
    expect(caesar_cipher("a",500)).to eql("g")
  end
end