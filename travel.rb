place1 = "沖縄旅行"
price1 = 10000
place2 = "北海道旅行"
price2 = 20000
place3 = "九州旅行"
price3 = 15000

puts <<~TEXT
       旅行プランを選択して下さい。

       1. #{place1}（#{price1}円）
       2. #{place2}（#{price2}円）
       3. #{place3}（#{price3}円）

     TEXT

while true
    print "プランの番号を選択 > "
    select_num_plan = gets.to_i
    break if (1..3).include?(select_num_plan)
    puts "1〜3の番号を入力して下さい。"
end

if select_num_plan == 1
    puts "#{place1}ですね。"
elsif select_num_plan == 2
    puts "#{place2}ですね。"
else
    puts "#{place3}ですね。"
end

puts "何名で予約されますか？"

while true 
    print "人数を入力 > "
    count_people = gets.to_i
    break if count_people >= 1
    puts "1以上を入力して下さい。"
end

puts "#{count_people}名ですね。"

if select_num_plan == 1
    total_price = price1 * count_people
elsif select_num_plan == 2
    total_price = price2 * count_people
else
    total_price = price3 * count_people
end

if count_people >= 5
    total_price *= 0.9
    puts "5名以上なので10％割引となります"
end

puts "合計金額は#{total_price.floor}円になります。"
