class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details = {})
    defaults = { age: 35, occupation: "Candidate", hobby: "Running", birthplace: "USA" }
    defaults.merge!(details)

    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

senator = Candidate.new("Mr.Smith", hobby: "Horror Movies", occupation: "Machinist")
p senator.occupation

