class Post < ActiveRecord::Base
  # validates_format_of :title, :with => /\A^\d+,?\Z/
  validates :title, :format => {:with => /\A^\d+,?\Z/, :message => 'format'}
end
