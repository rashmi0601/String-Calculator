# String Calculator Kata

* This repository implements a simple String Calculator with the following features:

  - Handles empty strings: Returns 0 for an empty string.
  - Handles single numbers: Returns the number itself for a single number.
  - Handles multiple numbers: Adds any number of numbers separated by commas.
  - Handles newlines as delimiters: Allows newlines between numbers.
  - Supports custom delimiters: Supports custom delimiters defined at the beginning of the string using the format "//[delimiter]\n[numbers…]".
  - Handles negative numbers: Throws an exception for negative numbers with a clear error message listing all negative numbers.

## How to Run the Program

### Steps
1. Clone or download the repository to your local machine.
2. Navigate to the project directory.
3. Run the tests:
   ```bash
   bundle exec rspec ./spec
