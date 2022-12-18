#### Locate the Ruby Documentation for methods File::path and File#path. How are they different?

```
File::path returns a string representation of a file.
  • File.path("/dev/null")   #=> "/dev/null"
```
- File::path is a class method
    - Class methods are called on the class, while instand methods are called on object
      - puts File.path('bin') calls the class method File::path
- File#path is an instance method
    - f = File.new('my-file.txt')
    - puts f.path
------

### NOTE
Reread this to develop stronger mental model.
