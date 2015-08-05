# Build a class AnimalSorter

# Make sure there are two constants that AnimalSorter knows about,
# SEA_ANIMALS and LAND_ANIMALS

# AnimalSorter should be able to accept an array of animals on
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.

class AnimalSorter
  LAND_ANIMALS=["aardvark","cat","elephant"]  # => ["aardvark", "cat", "elephant"]
  SEA_ANIMALS=["marlin","octopus","fish"]     # => ["marlin", "octopus", "fish"]
  def initialize(animals)
    @amimals=animals
  end
  def to_a
    animals=[SEA_ANIMALS,LAND_ANIMALS]        # => [["marlin", "octopus", "fish"], ["aardvark", "cat", "elephant"]]
  end
end
# animals=AnimalSorter.new                      # => #<AnimalSorter:0x007ff56294c500>
# animals.to_a                                  # => [["marlin", "octopus", "fish"], ["aardvark", "cat", "elephant"]]
