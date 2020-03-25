class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
  #beyonce.partner = jay_z
    self.partner = person
  #jay_z.partner = beyonce
  #  person.partner = self
    if person.class != Person
      begin raise PartnerError
      rescue 
      PartnerError => error 
      puts error.message 
    end 
    else
      person.partner = self
  end
end 

 class PartnerError < StandardError
   def "you must give the get_married method an argument of an instance of the person class!"
  end
end 

beyonce = Person.new("Beyonce")
#jay_z = Person.new("Jay-Z")

#beyonce.get_married(jay_z)
beyonce.get_married("Jay-Z")
puts beyonce.name




