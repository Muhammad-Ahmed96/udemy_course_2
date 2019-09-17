class Protfolio < ApplicationRecord

  has_many :technologies
  enum status: { draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  after_initialize :set_defaults

  def self.angular
  	where(subtitle: "Angular")
  end

  def self.ror
  	where(subtitle: "Ruby on Rails")
  end

  def set_defaults
  	self.main_image ||= Placeholder.image_generator(height: '300',width: '150')
    self.tumb_image ||= Placeholder.image_generator(height: '600',width: '200')
  end
end
