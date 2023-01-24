class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0}
  validate :men_or_womens_apparel

  def men_or_womens_apparel
    if mens_apparel.present? == false && womens_apparel.present? == false
      errors.add(:need_an_apparel, "Stores must carry at least one of the men's or women's apparel")
    end
  end
end
