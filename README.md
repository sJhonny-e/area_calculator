# area_calculator

## Purpose
Simulate the movements of a robot which can move around on a grid. The robot is placed at point (0,0).  
From (x, y) the robot can move to (x+1, y), (x-1, y), (x, y+1), and (x, y-1).  
Some points are dangerous and contain EMP Mines. To know which points are safe, we check
whether the sum digits of abs(x) plus the sum of the digits of abs(y) are less than or
equal to 23.  
For example, the point (59,75) is not safe because 5 + 9 + 7 + 5 = 26, which is greater than 23.  
The point (-51, -7) is safe because 5 + 1 + 7 = 13, which is less than 23.  

In case you were curious, I believe that the robot can access **424129** different points without exploding.

## How to run
prerequisits: ruby and bundler installed.  
install dependencies with `bundle install`  
run the tests with `bundle exec rspec`  

## How to read this
To understand how I built this, read the chain of commits.  
I've tried to explain the logic and reasoning behind each step.  

The basic process was:  
1. solve each of the smaller sub-problems (e.g. how to calculate sum of digits, how to calculate adjecencies etc.)
   1. it's fairly straightforward to use TDD for those
2. once I'm confident that each piece does its work, combine all of them into a single algorithm
3. now, when everything is working (moved from **red** to **green**), it's possible to refactor
   1. in this case, I chose to delete most tests for the smaller parts of the algorithm. this is because the whole algorithm was already covered by tests, so I had high confidence that any mistake I make will be caught.
  
