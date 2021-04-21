class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '現代小説' },
    { id: 3, name: '恋愛小説' },
    { id: 4, name: '推理小説' },
    { id: 5, name: 'SF・ホラー' },
    { id: 6, name: 'ノベライズ' },
    { id: 7, name: 'ビジネス' },
    { id: 8, name: '趣味' },
    { id: 9, name: '雑学' },
    { id: 10, name: 'アート' },
    { id: 11, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :books
end
