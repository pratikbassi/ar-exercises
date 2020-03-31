class Employee < ActiveRecord::Base
  belongs_to :store 
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, if: :in_range?


  def in_range?
    (hourly_rate.is_a? Numeric) && hourly_rate < 200 && hourly_rate > 40
  end





end
