And(/^I fill start date with "([^"]*)"$/) do |date|
  pending
end


And(/^I fill end date with "([^"]*)"$/) do |date|
  pending
end

And(/^I fill plant name with "([^"]*)"$/) do |name|
  pending
end

Given /the following plants exist/ do |plants_table|
  plants_table.hashes.each do |movie|
    Plant.create!(movie)
  end
end

Given /the following purchase orders exist/ do |p_orders_table|
  p_orders_table.hashes.each do |movie|
    PurchaseOrder.create!(movie)
  end
end