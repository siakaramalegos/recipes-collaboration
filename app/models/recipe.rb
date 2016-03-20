class Recipe < ActiveRecord::Base
	belongs_to :user

  has_attached_file :photo,
    :styles => { large: "580x300#", medium: "300x200#", thumb: "100x100#" },
    default_url: ":style_missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  extend FriendlyId
  friendly_id :title, use: :slugged


end
