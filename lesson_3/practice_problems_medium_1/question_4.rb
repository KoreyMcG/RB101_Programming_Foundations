def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Method 1 will mutate the buffer outside of the method defintion.
# will return buffer element

# Method 2 will initialize the buffer variable inside the method definition
# buffer will not be available outside the methods scope however it will return
# the new buffer. 
# If you assign the buffer input_array = rolling_buffer2(ect,ect,ect) then it would word
