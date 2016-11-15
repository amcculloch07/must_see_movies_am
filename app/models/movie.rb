class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :director_id, :presence => true

  validates :duration, :numericality => { :less_than_or_equal_to => 2764800, :greater_than_or_equal_to => 0 }

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

  validates :year, :numericality => { :less_than => 2050, :greater_than_or_equal_to => 1870 }

end
