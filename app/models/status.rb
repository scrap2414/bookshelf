class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '読了' },
    { id: 2, name: '途中' },
    { id: 3, name: '未読' }
  ]
  include ActiveHash::Associations
  has_many :books
end
