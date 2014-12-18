# Write a function that takes three arguments. If the first two are
# zero, return "FizzBuzz." If the first is zero, return "Fizz." If the second is
# zero, returh "Buzz." Otherwise return the third argument. Do not use any language
# features that we haven't yet covered in this book.

fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, x) -> x
end
