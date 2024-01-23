#ユーザー配列に入れる↓手動で追加
user = ["村松", "岸田", "相方", "佐藤", "岡本", "大西"]
answer = "y"

while answer == "y" do 
  #実際の処理
  #リスト表示 
  user.each_with_index do |user, i|
    puts "#{i}.#{user}"
  end 
  #除外する処理
  puts "除外する人はいますか？(y/nで入力してください)"
  #y/nを入力してyなら除外処理、nなら当番を決める処理へ
  answer = gets.chomp
  if answer == "y"
    puts "除外する人の番号を入力してください(半角スペースで区切る)"
    delete = gets.chomp #数字を入れる
    deletelist = delete.split.sort.reverse
    deletelist.each do |e|
      user.delete(user[e.to_i])
    end
  else 
    #当番を決める処理
    puts"当番は"
    puts user.sample
    break
  end
end