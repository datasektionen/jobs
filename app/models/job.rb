class Job < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :company, :presence => true

  belongs_to :company
end
