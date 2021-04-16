class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_tags
  has_many :tags, :through => :post_tags
  accepts_nested_attributes_for :tags, reject_if: proc { |attributes| attributes['name'].blank? }

  validates_presence_of :name, :content


  # def tags_attributes=(tags_attributes)

  #   if !tags_attributes[0].empty?
  #   tags_attributes.values.each do |tag_attribute|
     
  #     if tag_attribute["name"].present?
  #       tag = Tag.find_or_create_by(tag_attribute)
        
  #       self.tags << tag
        
  #     end
  #   end
  # end
  # end
end
