class Menu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sokuseki
  belongs_to :sokuseki_mon
  belongs_to :sokuseki_tue
  belongs_to :sokuseki_wed
  belongs_to :sokuseki_thu
  belongs_to :sokuseki_fri
  belongs_to :sokuseki_sat


  validates :name, presence: true
  validates :sokuseki_id, numericality: { other_than: 1 } 
  validates :sokuseki_mon_id, numericality: { other_than: 1 } 
  validates :sokuseki_tue_id, numericality: { other_than: 1 } 
  validates :sokuseki_wed_id, numericality: { other_than: 1 } 
  validates :sokuseki_thu_id, numericality: { other_than: 1 } 
  validates :sokuseki_fri_id, numericality: { other_than: 1 } 
  validates :sokuseki_sat_id, numericality: { other_than: 1 }  
end
