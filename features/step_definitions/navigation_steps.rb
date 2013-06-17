require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given(/^I am on the (.*?) page$/) do |page_name|
  visit path_to(page_name)
end

When(/^I see a list of (\d+) credit cards$/) do |count|
  count = count.to_i
  page.has_css?("table#cards tr", :count => (count + 1)) #add one for the header row
end

Then(/^I should see (\d+) valid cards and (\d+) invalid cards$/) do |valid_count, invalid_count|
  valid_count = valid_count.to_i
  invalid_count = invalid_count.to_i
  valid_regexp = Regexp.new(/(valid)/)
  invalid_regexp = Regexp.new(/(invalid)/)
  page.has_content?(valid_regexp, :count => valid_count)
  page.has_content?(invalid_regexp, :count => invalid_count)
end
