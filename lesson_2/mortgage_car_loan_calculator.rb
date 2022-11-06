require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def total_interest(total_loan, monthly_interest, monthly_payment)
  outstanding_loan = total_loan.to_f
  total_ammortization_interest = 0
  while outstanding_loan > 0
    principle_payment = monthly_payment.to_f - (outstanding_loan.to_f *
                                                monthly_interest.to_f)
    interest = monthly_payment.to_f - principle_payment.to_f
    outstanding_loan -= principle_payment.to_f
    total_ammortization_interest += interest.to_f
  end
  total_ammortization_interest.round(2)
end

# Welcome message

prompt(MESSAGES['name'])
name = Kernel.gets().chomp()

prompt("Welcome to the Loan Calculator #{name}!")

# START MAIN LOOP HERE

loop do
  # Total loan amount request

  loan_amount = ''
  loop do
    prompt(MESSAGES['loan_amount'])
    loan_amount = Kernel.gets().chomp()
    if valid_number?(loan_amount)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  # APR request

  apr = ''
  loop do
    prompt(MESSAGES['enter_apr'])
    apr = Kernel.gets().chomp()
    if valid_number?(apr)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  # Loan Duration in years

  loan_duration_years = ''
  loop do
    prompt(MESSAGES['enter_loan_duration'])
    loan_duration_years = gets.chomp
    if valid_number?(loan_duration_years)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end

  # Monthly Variables

  loan_duration_months = loan_duration_years.to_i * 12
  monthly_interest = (apr.to_f / 100) / 12
  monthly_payment = loan_amount.to_f * (monthly_interest.to_f / (1 -
                     (1 + monthly_interest.to_f)**(-loan_duration_months.to_i)))
  # Interest Variables

  interest = total_interest(loan_amount, monthly_interest, monthly_payment)
  total = interest + loan_amount.to_f

  # Output to User

  operator_prompt = <<-MSG
Here are your loan calculation results:
    Monthly Payments:    $ #{monthly_payment.round(2)}
    Total Interest Paid: $ #{interest}
    Total Amount Paid:   $ #{total.round(2)}
  MSG

  prompt(operator_prompt)

  # Request if another loan calculation is needed.

  prompt(MESSAGES['go_again'])
  answer = Kernel.gets().chomp().downcase()
  break if answer != 'y'
end

prompt(MESSAGES['thanks'])
