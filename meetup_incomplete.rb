require 'date'

ORDINALS = {
    :first => 1, :second => 2, :third => 3, :fourth => 4, :fifth => 5}
date = 'The first Monday of February 2018'

new_list = []
date.split.each{|number|
  new_list << number if number.match(/[0-9]/)
 }

date.split.each{|date|
new_list <<  Date::MONTHNAMES.index(date)
}

date.split.each{|ordinal|
 new_list << ORDINALS[ordinal.to_sym] if ORDINALS.include? ordinal.to_sym

}

print new_list.compact.join('/')
