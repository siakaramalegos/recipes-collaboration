class Recipe < ActiveRecord::Base
	belongs_to :users

  has_attached_file :photo,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :styles => { large: "580x300#", medium: "300x200#", thumb: "100x100#" },
    default_url: ":style_missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  extend FriendlyId
  friendly_id :title, use: :slugged


end
