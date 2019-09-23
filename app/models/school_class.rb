class SchoolClass < ActiveRecord::Base
  def to_s
    self.title + " in room " + self.room_number.to_s
  end
end