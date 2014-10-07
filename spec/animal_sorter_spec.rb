describe "AnimalSorter" do

  describe "LAND_ANIMALS" do
    it "is a constant in the AnimalSorter class" do
      expect { AnimalSorter::LAND_ANIMALS }.to_not raise_error
    end
    it "is an array" do
      expect(AnimalSorter::LAND_ANIMALS.class).to eq(Array)
    end
    it "contains strings of land animals" do
      ["aardvark", "cat", "elephant"].each do |land_animal|
        expect(AnimalSorter::LAND_ANIMALS).to include(land_animal)
      end
    end
  end

  describe "SEA_ANIMALS" do
    it "is a constant in the AnimalSorter class" do
      expect { AnimalSorter::SEA_ANIMALS }.to_not raise_error
    end
    it "is an array" do
      expect(AnimalSorter::SEA_ANIMALS.class).to eq(Array)
    end
    it "contains strings of land animals" do
      ["marlin", "octopus", "fish"].each do |sea_animal|
        expect(AnimalSorter::SEA_ANIMALS).to include(sea_animal)
      end
    end
  end

  describe '#to_a' do
    
    let(:animal_list) { ["marlin", "aardvark", "octopus", "cat", "fish", "elephant"] }

    it 'sorts sea and land animals into two arrays' do
      expect(AnimalSorter.new(animal_list).to_a.length).to eq(2)
    end
    
    it 'does not forget about an animal' do
      total_num_of_elements = 0
      AnimalSorter.new(animal_list).to_a.each {|arr| total_num_of_elements += arr.length}
      expect(total_num_of_elements).to eq(6)
    end

    it 'returns sea creatures first' do
      expect(AnimalSorter.new(animal_list).to_a[0]).to include "marlin"
    end

    it 'returns land animals second' do
      expect(AnimalSorter.new(animal_list).to_a[1]).to include "aardvark"
    end

    it 'includes all sea creatures in the first array' do
      expect(AnimalSorter.new(animal_list).to_a[0].length).to eq(3)
      ["marlin", "octopus", "fish"].each do |sea_creature|
        expect(AnimalSorter.new(animal_list).to_a[0]).to include(sea_creature)
      end
    end

    it 'includes all land animals in the second array' do
      expect(AnimalSorter.new(animal_list).to_a[1].length).to eq(3)
      ["aardvark", "cat", "elephant"].each do |land_animal|
        expect(AnimalSorter.new(animal_list).to_a[1]).to include(land_animal)
      end
    end

  end
end
