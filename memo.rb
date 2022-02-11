require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp
  
  puts "メモしたい内容を記入してください"
  puts "入力後、Ctrl + D で保存します"
  memo = STDIN.read
  
  CSV.open("#{file_name}.csv","w") do |csv|
  csv.puts ["#{memo}"]
  end
  
elsif memo_type == 2
  puts "編集するファイル名を入力してください"
  
  file_name = gets.chomp
  data_list = CSV.read("path/to/#{file_name}.csv")
  puts data_list
  
else
  puts "入力エラー"

end
