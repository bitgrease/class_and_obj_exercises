=begin
  Given the code below (testcases), code the class definition
=end

# class Person

#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
# end

# bob = Person.new('bob')
# p bob.name  == 'bob'                # => 'bob'
# bob.name = 'Robert'
# p bob.name == 'Robert'              # => 'Robert'

class Person

  attr_accessor :first_name, :last_name
  def initialize(first_name='', last_name='')
    @first_name = first_name
    @last_name = last_name
  end

  def name
    if last_name.size > 0
      "#{first_name} #{last_name}"
    else
      "#{first_name}"
    end
  end
end


bob = Person.new('Robert')
p bob.name == 'Robert'                  # => 'Robert'
p bob.first_name  == 'Robert'          # => 'Robert'
p bob.last_name   == ''          # => ''
bob.last_name = 'Smith'
p bob.name     == 'Robert Smith'
            

# LS Solution
# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(full_name)
#     parts = full_name.split
#     @first_name = parts.first
#     @last_name = parts.size > 1 ? parts.last : ''
#   end

#   def name
#     "#{first_name} #{last_name}".strip
#   end
# end