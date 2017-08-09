class Semester < ApplicationRecord
  has_many :group

  def semester_with_year
    "#{semester}º de #{year}"
  end

end
