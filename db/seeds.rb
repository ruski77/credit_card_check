CreditCard.delete_all
index = 0
File.open("test/fixtures/credit_cards.txt", "r").each_line do |line|
  index = index + 1
  num = line.gsub(/\s+/, "")
  CreditCard.create!(:number => num, :position => index)
end