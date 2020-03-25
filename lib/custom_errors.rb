class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
  #beyonce.partner = jay_z
    self.partner = person
  #jay_z.partner = beyonce
    person.partner = self
    if person.class != Person
      raise PartnerError
    else
      person.partner = self
  end
end 
end 
 class PartnerError < StandardError
  end
  

beyonce = Person.new("Beyonce")
#jay_z = Person.new("Jay-Z")

#beyonce.get_married(jay_z)
beyonce.get_married("Jay-Z")
puts beyonce.name




