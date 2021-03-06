class Dogs
  POOR      = (0..5).to_a.sample
  AVERAGE   = (6..10).to_a.sample
  EXCELLENT = (11..15).to_a.sample

  def initialize
    joe   = {
      :name => {:first => "Joe", :last=> "Smith"},
      :owner_quality => EXCELLENT
    }
    sarah = {
      :name => {:first => "Sarah", :last => "Darnum"},
      :owner_quality => AVERAGE
    }
    andrew = {
      :name => {:first => "Andrew", :last => "Beter"},
      :owner_quality => AVERAGE
    }

    @dogs = [
      {name: "Fido",     size: :large,  owner: joe},
      {name: "Yapper",   size: :small,  owner: joe},
      {name: "Bruiser",  size: :large,  owner: joe},
      {name: "Tank",     size: :huge,   owner: sarah},
      {name: "Beast",    size: :large,  owner: sarah},
      {name: "Harleigh", size: :medium, owner: andrew},
      {name: "Trixie",   size: :small,  owner: andrew}
    ]
  end

  def small_dogs
    small_dog_array = []
    @dogs.each do |dog|
     small_dog_array.push(dog) if dog.has_value?(:small)
    end
    small_dog_array
  end

  def huge_dog
    huge_dog_array = []
    @dogs.each do |dog|
      huge_dog_array.push(dog) if dog.has_value?(:huge)
    end
    huge_dog_array[0]
  end

  def large_dog_names
    large_dog_name_array = []
    @dogs.each do |dog|
      large_dog_name_array.push(dog) if dog.has_value?(:large)
    end
    name_array = []
    large_dog_name_array.each do |name|
    name_array.push(name[:name])
    end
    name_array
  end

  def joes_large_dogs
    joes_large_dogs_array = []

    @dogs.each do |dog|
      if dog[:owner][:name][:first] =="Joe" && dog[:size] == :large
      joes_large_dogs_array.push(dog[:name])
      end
    end
    joes_large_dogs_array
  end

  def sizes
    size_array = []
    @dogs.each do |dog|
    size_array.push(dog[:size])
    size_array.uniq!
    end
    size_array
  end

def owners
  first_array = []
  @dogs.each do |dog|
  first_array.push(dog[:owner][:name][:first])
  first_array.uniq!

  end
  print first_array

  last_array = []
  @dogs.each do |dog|
    last_array.push(dog[:owner][:name][:last])
    last_array.uniq!

  end
  print last_array


end


end











