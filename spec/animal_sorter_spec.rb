describe "AnimalSorter" do
  it "has a constant array that contains land animals"
    expect(AnimalSorter::LAND_ANIMALS.class).to eq(Array)
    ["aardvark", "cat", "elephant"].each do |land_animal|
      expect(AnimalSorter::LAND_ANIMALS).to include(land_animal)
    end
  end

  it "has a constant array that contains sea animals"
    expect(AnimalSorter::SEA_ANIMALS.class).to eq(Array)
    ["marlin", "octopus", "fish"].each do |sea_animal|
      expect(AnimalSorter::SEA_ANIMALS).to include(sea_animal)
    end
  end

  describe '#to_a' do
    
    animals = ["marlin", "aardvark", "octopus", "cat", "fish", "elephant"]

    it 'sorts sea and land animals' do
      sorted_animals = [
        ["marlin", "octopus", "fish"],
        ["aardvark", "cat", "elephant"]
      ]

      expect(AnimalSorter.new(animals).to_a).to eq(sorted_animals)
    end

    it 'returns sea creatures first' do
      expect(AnimalSorter.new(animals).to_a.first).to include "marlin"
    end

    it 'returns land animals second' do
      expect(AnimalSorter.new(animals).to_a.last).to include "aardvark"
    end
  end
end
