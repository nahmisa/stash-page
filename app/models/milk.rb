class Milk < ApplicationRecord
  validates :milk_type,
    presence: true,
    inclusion: { in: %w(fresh frozen thawed),
      message: "%{value} is not a valid milk type" }
  validates :date, presence: true
  validates :amount, presence: true,
    numericality: { only_integer: true }

  def get_exp_date(milk_type, date)
    #https://www.cdc.gov/breastfeeding/recommendations/handling_breastmilk.htm
    # assuming for now that fresh means in the refridgerator: 5 days
    # frozen means freezer compartment with separate doors: 3-6 months
    # thawed milk needs to be used in 24 hours - expiration date is today;
    case milk_type
      when 'fresh'
        return date.advance(days: 5)
      when 'frozen'
        return date.advance(months: 6)
      when 'thawed'
        return date
    end
  end
end
