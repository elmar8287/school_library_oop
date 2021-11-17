class Person
  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = [1..100]
    @name = name
    @age = age
    @parent_permission = parent_permission

  def is_of_age?
    @age >= 18

  def can_use_services?
    is_of_age? || @parent_permission
  end

  private: is_of_age?
end
