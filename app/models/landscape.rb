class Landscape < ActiveRecord::Base
  belongs_to :trail
  mount_uploader :photo, LandscapePhotoUploader
end
