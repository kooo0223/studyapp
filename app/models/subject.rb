class Subject < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '現代文' },
    { id: 3, name: '古文' },
    { id: 4, name: '漢文' },
    { id: 5, name: '英語' },
    { id: 6, name: 'ドイツ語' },
    { id: 7, name: 'フランス語' },
    { id: 8, name: '中国語' },
    { id: 9, name: '韓国語' },
    { id: 10, name: '数学I' },
    { id: 11, name: '数学II' },
    { id: 12, name: '数学III' },
    { id: 13, name: '数学A' },
    { id: 14, name: '数学B' },
    { id: 15, name: '数学C' },
    { id: 16, name: '物理' },
    { id: 17, name: '生物' },
    { id: 18, name: '化学' },
    { id: 19, name: '地学' },
    { id: 20, name: '地理' },
    { id: 21, name: '日本史' },
    { id: 22, name: '世界史' },
    { id: 23, name: '公民' },
    { id: 24, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :posts

end