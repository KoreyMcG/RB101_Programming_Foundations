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
  outstanding_loan = total_loan
  total_amortization_interest = 0
  while outstanding_loan > 0
    principle_payment = monthly_payment - (outstanding_loan * monthly_interest)
    interest = monthly_payment - principle_payment
    outstanding_loan -= principle_payment
    total_amortization_interest += interest
  end
  total_amortization_interest.round(2)
end

def get_loan_amount
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
  loan_amount
end

def get_apr
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
  apr
end

def get_loan_duration
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
  loan_duration_years
end

def name_valid?
  loop do
    name = Kernel.gets().strip().chomp()
    if name.empty?
      prompt(MESSAGES['invalid_name'])
    else
      break name
    end
  end
end

# Welcome message

prompt(MESSAGES['name'])
name = name_valid?

prompt("Welcome to the Loan Calculator #{name}!")

loop do # Main Loop Start
  loan_amount = get_loan_amount.to_f
  apr = get_apr.to_f

  # Monthly Variables

  loan_duration_months = get_loan_duration.to_f * 12
  monthly_interest = (apr / 100) / 12
  monthly_payment = loan_amount * (monthly_interest / (1 -
                     (1 + monthly_interest)**(-loan_duration_months)))

  # Interest Variables

  interest = total_interest(loan_amount, monthly_interest, monthly_payment)
  total = interest + loan_amount

  # Output to User

  operator_prompt = <<-MSG
Here are your loan calculation results:
    Monthly Payments:     $ #{monthly_payment.round(2)}
    Total Interest Paid:  $ #{interest}
    Total Amount Paid:    $ #{total.round(2)}
  MSG

  prompt(operator_prompt)

  # Request if another loan calculation is needed.

  prompt(MESSAGES['go_again'])
  answer = Kernel.gets().chomp().downcase()
  break unless answer.start_with?('y')
end

prompt(MESSAGES['thanks'])
