class User < ApplicationRecord
  has_many  :books
  has_one_attached :image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :name, presence: true
         validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, 
          message: 'は英語と数字の両方を含めて設定してください' }    
           
end
