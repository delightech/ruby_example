# frozen_string_literal: true

[1, 3, 4, 6, 8, 99, 55, 22, 42, 4839, 999].each do |i|
  File.open('./save_texts.txt', 'a+') do |f|
    f.puts i unless f.readlines(chomp: true).uniq.include?(i.to_s)
  end
end
# pp File.readlines('./already_updated_transaction_head_ids.txt', 'r')
# a = File.open('./already_updated_transaction_head_ids.txt', 'r') { |f| f.readlines(chomp: true) }

a = [1, 2, 3, 4, 5, 9, 55, 11, 442, 3452, 54_133].reject do |i|
  File.exist?('./save_texts.txt') &&
    File.open('./save_texts.txt', 'r') { |f| f.readlines(chomp: true) }.include?(i.to_s)
end
pp a
