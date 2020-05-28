class Article < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings
  def tag_list
    tags.collect(&:name).join(', ')
 end
end
