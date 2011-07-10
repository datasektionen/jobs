class Company < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true
  validates :description, :presence => true
  has_many :jobs
end
