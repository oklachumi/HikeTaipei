class Trail < ActiveRecord::Base
  has_many :landscapes

  acts_as_mappable

  def has_geo?
    !lat.nil? && !lng.nil?
  end
end
