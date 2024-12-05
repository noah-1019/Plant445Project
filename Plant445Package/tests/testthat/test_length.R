
# Check to see that the length of fizz buzz is correct

test_that('Length of resultant vector is correct',{
  expect_equal(length(FizzBuzz(10)), 10)
  expect_equal(length(FizzBuzz(100)), 100)
  expect_equal(length(FizzBuzz(1)), 1)
  expect_equal(length(FizzBuzz(1000)), 1000)
})
