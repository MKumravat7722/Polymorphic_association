class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  validate :Validate_title_of_comments
  def Validate_title_of_comments
    if(title=="title")
      error.add(:title,"title name can not be title")
    end
  end
end
