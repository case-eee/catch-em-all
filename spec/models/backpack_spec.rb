require 'rails_helper'

RSpec.describe Backpack, type: :model do
  it "has initial contents" do
    backpack = Backpack.new({ "1" => 1 })

    expect(backpack.contents).to eq({ "1" => 1 })
  end

  it "can add a pokemon" do
    backpack = Backpack.new({ "1" => 1})

    backpack.add_pokemon(1)
    backpack.add_pokemon(2)

    expect(backpack.contents).to eq({ "1" => 2, "2" => 1})
  end

  it "returns total number of all captured pokemon" do
    backpack = Backpack.new({ "1" => 3, "2" => 1, "3" => 3})

    expect(backpack.total).to eq(7)
  end

  it "returns total number of a specific pokemon" do
    backpack = Backpack.new({ "1" => 3, "2" => 1, "3" => 4})

    expect(backpack.count_of(3)).to eq(4)
  end
end
