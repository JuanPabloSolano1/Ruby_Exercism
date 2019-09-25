def prioritize(book,rev = false)
  if rev
    book.sort {|firstBook,secondBook|
      firstBook <=> secondBook
    }
  else
    book.sort {|firstBook,secondBook|
      secondBook <=> firstBook
    }
  end
end

books = ["Check", "The NUmber","Control Tower"]

print prioritize(books)

print prioritize(books,true)


#Second Exercise
def alphabetize(arr,rev = false)
  arr.sort! {|number1,number2|
    number1 <=> number2}
end

numbers = [6,4,5,3,2,1,9]

print(alphabetize(numbers,false))

#Reverse =>>>>
def alphabetize(arr,rev = false)
  arr.sort! {|number1, number2|
   number1 <=> number2
    }
  if rev
    return arr.reverse!
  else
    return arr
  end
end

numbers = [7,1,6,3,9,2]
print alphabetize(numbers, false)
