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
  def initialize(l)
    @animals=l                                # => ["marlin", "aardvark", "octopus", "cat", "fish", "elephant"]
  end
  def to_a
    sea=[]                                    # => []
    land=[]                                   # => []
    @animals.each do |animal|                 # => ["marlin", "aardvark", "octopus", "cat", "fish", "elephant"]
      if LAND_ANIMALS.include? animal         # => false, true, false, true, false, true
        land<<animal                          # => ["aardvark"], ["aardvark", "cat"], ["aardvark", "cat", "elephant"]
      else
        sea <<animal                          # => ["marlin"], ["marlin", "octopus"], ["marlin", "octopus", "fish"]
      end                                     # => ["marlin"], ["aardvark"], ["marlin", "octopus"], ["aardvark", "cat"], ["marlin", "octopus", "fish"], ["aardvark", "cat", "elephant"]
    end                                       # => ["marlin", "aardvark", "octopus", "cat", "fish", "elephant"]
    [sea,land]                                # => [["marlin", "octopus", "fish"], ["aardvark", "cat", "elephant"]]
  end
end
