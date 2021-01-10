class Menu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sokuseki


  validates :name, presence: true
  validates :sokuseki_id, numericality: { other_than: 1 } 
end
