# Check to see that negative values and non integers through an error

test_that('Entry must be a positive integer value',{
  expect_error((FizzBuzz(-10)))
  expect_error((FizzBuzz(-100)))
  expect_error((FizzBuzz(1.3)))
  expect_error((FizzBuzz(1000.1)))
})
