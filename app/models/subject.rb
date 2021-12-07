class Subject < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '現代文' },
    { id: 3, name: '古文' },
    { id: 4, name: '漢文' },
    { id: 5, name: '英語' },
    { id: 6, name: '数学I' },
    { id: 7, name: '数学II' },
    { id: 8, name: '数学III' },
    { id: 9, name: '数学A' },
    { id: 10, name: '数学B' },
    { id: 11, name: '数学C' },
    { id: 12, name: '物理' },
    { id: 13, name: '生物' },
    { id: 14, name: '化学' },
    { id: 15, name: '地学' },
    { id: 16, name: '地理' },
    { id: 17, name: '日本史' },
    { id: 18, name: '世界史' },
    { id: 19, name: '公民' },
    { id: 20, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts

end