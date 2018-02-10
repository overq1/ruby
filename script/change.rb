amount = ARGV[0].to_i
payment = ARGV[1].to_i
change_remain = payment - amount
money_list = [5000, 2000, 1000, 500, 100, 50, 10, 5, 1]

change_hash = Hash.new()
for money_unit in money_list do
	change_hash[money_unit] = change_remain / money_unit
	change_remain %= money_unit
end
change_hash.sort.reverse.each{|k, v|
	puts k.to_s + "=>" + v.to_s
}
