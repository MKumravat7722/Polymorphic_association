class News < ApplicationRecord
  has_many :comments,as: :commentable
  #before_save :before_save
  #after_save :after_save
  around_save :around_save
  # def before_save
  #   puts 'before save'
  # end

  # def after_save
  #   puts 'after_save'
  # end

  def around_save
    puts 'in around save'
    yield # User saved
    puts 'out around save'
  end
end
