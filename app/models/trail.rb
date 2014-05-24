class Trail < ActiveRecord::Base
  has_many :landscapes

  def has_geo?
    !lat.nil? && !long.nil?
  end
end
