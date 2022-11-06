### Mortgage / Car loan calculator
- Get the loan amount from the user
- Get the Annual Percentage Rate(APR)
- Get the loan during from user
- Set the monthly interest rate
  - Convert APR into monthly interest rate
- Set loan duration in months
  - Convert loan duration in years into months
- Set monthly payment and display to user
  - use formula below:
```ruby
monthly_payment = loan_amount * ( monthly_interest / 
                  ( 1 - ( 1 + monthly_interest ) ** 
                  ( -loan_duration_months ) ) )
```
----
### Formal Psuedo Code

```
START

PRINT("WELCOME MESSAGE")

LOOP DO # MAIN LOOP

  PRINT "Requested Loan Amount"
  GET "loan_amount" - validate number
  
  PRINT "Enter APR rate example (5% = .05%)"
  GET "annual_rate"
  
  PRINT "Requested Loan Duration"
  GET "loan_duration_years"
  
  SET loan_duration_months = loan_duration_years * 12
  SET monthly_interest = annual_rate.to_f / 100 / 12
  SET monthly_payment
  
  PRINT "Your monthly loan payment for x duration of months/years"
  
  PRINT "Would you like to enter another loan? (Y/N)"

END if not 'Y'

PRINT "Thanks for using the mortgage/loan calculator!"
```
END

----
