# Check to see that the value must be numeric

test_that('Entry must be numeric',{
  expect_error((FizzBuzz('a')))
  expect_error((FizzBuzz("2")))
  expect_error((FizzBuzz("324")))
  expect_error((FizzBuzz("Fizz Buzz")))
  expect_error((FizzBuzz("Fizz Buzz")))
  expect_error((FizzBuzz(Inf)))
})
