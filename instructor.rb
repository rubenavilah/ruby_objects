require"./person"

class Instructor < Person

  attr_accessor :nickname, :strength

  def initialize(params = {})
    @nickname = params[:nickname] if params[:nickname]
    @strength = params[:strength] ? params[:strength] : "Be lazy"
    super
  end

  def claim_your_strength
      "I like so Much #{self.strength.upcase}"
  end
end
