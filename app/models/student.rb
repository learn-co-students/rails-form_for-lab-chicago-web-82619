class Student < ApplicationRecord
  belongs_to :school_class
  def to_s
    self.first_name + " " + self.last_name
  end
end
