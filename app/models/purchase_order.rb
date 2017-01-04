class PurchaseOrder < ActiveRecord::Base
  belongs_to :plant

  # Custom validator Validate instead of validates
  validate :end_date_cannot_be_before_start_date, :purchases_cannot_be_overlapping

  def end_date_cannot_be_before_start_date
    if start_date >= end_date
      errors.add(:end_date, "can't be before start_date")
    end
  end

  def purchases_cannot_be_overlapping
    if PurchaseOrder.where("plant_id = ? AND end_date > ?", plant_id, start_date).any?
      errors.add(:end_date, "purchase shouldn't be overlapping overlapping purchase is #{p}")
    end
  end
end
