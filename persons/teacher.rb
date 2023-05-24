require_relative 'person'

class Teacher < Person

  attr_accessor :specialization
  attr_writer :id
  def initialize(speciailzation, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission:)
    @specialization = speciailzation
  end

  def can_use_services?
    true
  end
end
