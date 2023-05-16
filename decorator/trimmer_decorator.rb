require_relative 'base'

class TrimDecorator < Decorator
  def correct_name
    super.slice(0, 9)
    (super[0..9]).to_s
  end
end
