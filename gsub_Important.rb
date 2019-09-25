sentence = 'I like to code in Ruby'
sentence_final = sentence.gsub('Ruby','Python')
#print sentence_final

sentence = 'My favorite number is 3'
sentence.gsub(/\d+/, '4')


sentence = 'The price of the book is 30'
final_sentence = sentence.gsub(/\d+/){|n| n.to_i / 10}
#print final_sentence


check = {
 "a" => 3,
 "b" => 2,
 "c" => 5
}

def change(text)
 text.gsub(/[a-z]/,"a" => "b","b"=>"d","c"=>"z")
end

#print change('abc')

membership = {
 "Diamond" => "Gold",
 "Bronze" => "Silver"
}
print membership

sentence = 'Anna is a Bronze member and Robert is a Silver one'
print sentence.gsub(/\w+/){|m| membership.fetch(m,m)}
