class Dice < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  attr_accessible :comment, :name, :picture
end
