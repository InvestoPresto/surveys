class Survey < ActiveRecord::Base
  has_many :sections, :dependent => :destroy, :order => :id
  accepts_nested_attributes_for :sections, :allow_destroy => true, :reject_if => lambda { |a| a[:style].blank? }
end
