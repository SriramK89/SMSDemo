class Sm < ActiveRecord::Base
  attr_accessible :message, :number

  validates :number, :numericality => true, :presence => true
  validates_format_of :number, :with => /[0-9]{10}/
  validates :message, :length => {:maximum => 150}, :presence => true
end
