require_relative 'base'

class TrimDecorator < Decorator
  def correct_name
    super.slice(0, 9) if super.length > 10
  end
end
