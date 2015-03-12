class Story < ActiveRecord::Base
  include PublicActivity::Model


  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true


  tracked owner: Proc.new { |controller, model| controller.current_user ? controller.current_user : get_ }
end
