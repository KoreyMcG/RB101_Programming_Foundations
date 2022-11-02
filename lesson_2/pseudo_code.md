**QUESTION 1**
> Write a method that returns the sum of two integers

- Assign the first variable
- Assign the second variable
- Assign SUM variable equal to variable1 + variable2
- print SUM

**END**

```
SET variable1
SET variable2

SET sum = variable1 + variable2

PRINT sum
```

```ruby
first_number = 10
second_number = 20

sum = first_number + second_number

print sum
```

---

**QUESTION 2**
> Write a method that takes an array of strings, and returns a string that is
> all those strings concatenated together

- Assign string variable equal to an array of strings
- Assign concatenated_variable that is a empty string 
- Iterate through string variable
  - if string variable is not on last index add word + an empty space
  - else string variable is on last index just add word
- Print concatenated_variable

```
SET strings_array = array of strings
SET strings_concatenated = empty set of strings

ITERATE over strings_array
  IF strings_array is on the last index
    PUSH word into strings_concatenated
  ELSE
    PUSH word into strings_concatenated + empty space
  END
END iteration

PRINT strings_concatenated
```

```ruby
words = ['array', 'of', 'words']
word_string = ''

words.each_with_index do |word, idx|
  if idx == (words.size - 1)
    word_string << word
  else
    word_string << word + ' '
  end
end

print word_string
```

**END**

---

**QUESTION 3**
> Write a method that takes an array of integers, and returns a new array with
> every other element from the original array, starting with the first element.
> for instance:
 ```ruby
every_other([1,4,7,2,5]) # => [1,7,5]
 ```

 - Assign arrays variable equal to an array of integers
 - Assign selection_arrays equal to an empty array
 - Iterate through arrays variable
   - if index is even select integer to push to selection_variable
   - if index is odd skip over it
 - Print selection_arrays

```
SET integers_array = an array of integers
SET selected_array = integers_array(enumerating through selecting every other index)
  WHILE index is even
    SELECT integer
  END


PRINT selected_array
```

```ruby
integers_array = [1, 7, 3, 8, 2, 10]
selected_array = integers_array.select.each_with_index do |num, idx|
                    if idx.even?
                      num
                    end
                  end

p selected_array
```

---

**QUESTION 4**

> Write a method that determines the index of the 3rd occurence of a given
> character in a string. For instance, if the given character is 'x' and the
> string is 'axbxcdxex', the method should return 6 (The index of the 3rd 'x').
> If the given character does not occur at least 3 times, return nil.

- Assign variable equal to a string that we want too iterate through
- Assign variable equal to string split into an array with each character seperated
- Assign variable found and set to 0
- Iterate over string split variable assigning local variable to index and letter
    - Assign counter variable and set to 0
    - Assign variable to character we wish to find
    - if letter variable is equal to letter we want to find
      - Add +1 to counter variable
    - if counter variable is equal to 3
      - return index variable
    - if counter variable is less than 3 after iterating over array
      - return nil
- Print found variable

```
SET initial_string = 'to a string of letters'
SET string_array = to initial_string broken into an array seperated by each character
SET found = 0 (to initialize variable)
SET counter = 0 to initialize variable

ITERATE string_array |set local variable letter and index|
  SET search_variable = the letter we wish too find
  IF counter == 3
    SET found = index - 1
  ELSIF search_variable == letter
    SET counter += 1
  ELSIF counter < 3
    NIL
  END

PRINT found
```

```ruby
words = 'axbxcdxex'
string_array = words.split(//)
index_returned = 0
counter = 0

string_array.each_with_index do | letter, index |
  find = 'x'
  if counter == 3
    index_returned = index - 1
  elsif find == letter
    counter += 1
  else
    nil
  end
end

p index_returned
```

---

**QUESTION 5**
> Write a method that takes two arrays of numbers and returns the result of merging
> the arrays. The elements of the first array should become the elements at the
> even indexes of the returned array, while the elements of the second array should
> become the elements at the odd indexes. For instance:
```ruby
merge([1,2,3], [4,5,6]) # => [1, 4, 2, 5, 3, 6]
```

- Assign variable to first array containing integers.
- Assign variable to second array containing integers.
- Assign variable to merged array that is empty.
- Create loop that pushes variables from first array then second array into
merged array until both first and second array are empty.
- After both first and second array are empty print merged array.

```
SET first_array = [an array of integers]
SET second_array = [an array of integers]
SET merged_array = [an empty array]

WHILE first_array is not empty && second_array is not empty
  SHIFT first_array into merged_array
  SHIFT second_array into merged_array
END

PRINT merged_array
```

```ruby
first_array = [2, 5, 8, 9]
second_array = [1, 6, 7, 10]

def merge(array1, array2)
  merged_array = []
  while array1 != [] && array2 != []
    merged_array << array1.shift
    merged_array << array2.shift
  end
  merged_array
end

p merge(first_array, second_array)
```
