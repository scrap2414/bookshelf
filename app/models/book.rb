class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :user
  has_one_attached :image, dependent: :destroy

  with_options presence: true do
    validates :author
    validates :name
  end
end
