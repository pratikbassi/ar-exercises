class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, presence: true, if: :money?

  def money?
    annual_revenue > 0 && (annual_revenue.is_a? Numeric)
  end

end

