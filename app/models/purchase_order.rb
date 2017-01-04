class PurchaseOrder < ActiveRecord::Base
  belongs_to :plant

  # Custom validator Validate instead of validates
  validate :end_date_cannot_be_before_start_date

  def end_date_cannot_be_before_start_date
    if start_date >= end_date
      errors.add(:end_date, "can't be before start_date")
    end
  end
end
