=begin
  
  input a name of one or two words.
  Output = if one word, assign to first_name and '' to second, if two words, assign first to firstname
    and second word to last_name

=end 


class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name) # <== Problem here. Approach like exercise for interview
    parse_full_name(full_name)
  end

  def parse_full_name(name)
    parts = name.split
    self.first_name = parts.first
    case parts.size
    when 1 
      self.last_name = ''
    else
      self.last_name = parts.last
    end
  end

  def to_s
    first_name
  end

  private :parse_full_name
end

bob = Person.new('Robert')
p bob.name                 == 'Robert' # => 'Robert'
p bob.first_name           == 'Robert' # => 'Robert'
p bob.last_name             == ''# => ''
bob.last_name = 'Smith'
p bob.name                 == 'Robert Smith' # => 'Robert Smith'

bob.name = "John Adams"
p bob.first_name          #== 'John'  # => 'John'
p bob.last_name            #== 'Adams' # => 'Adams'
puts "This person's name is #{bob}." 