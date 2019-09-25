menu = {:rice => 3.5, :noodles => 4.5}
quantity = {:rice => 1, :noodles => 1},{:rice => 2, :noodles => 3}

new_list = []
new_list << quantity.inject{|memo, el| memo.merge( el ){|k,oldv,new_v| oldv + new_v}}
print new_list
