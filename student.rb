require "./person"

class Student < Person

  attr_accessor :tutor, :average
  def initialize(params = {})
    super
    @tutor = params [:tutor]
    @average = params[:average]
  end

  def claim_your_age
    "#{super} and i am a Student"
  end
end
