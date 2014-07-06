# snail-race

## Important ! This project is a WIP so the public API is likely to change over the course of the next few weeks.

Fed up with the hassle of writing the same lines of code to benchmark blocks, code that you'll eventually end up throwing away ? Well this is your lucky day, scroll down a bit...

## Installation

A bit of work still needs to be done before pushing it on Rubygems, so stay tuned :)

## Comparing blocks

```ruby
# Get your snails in line and ready...
first  = Snail.new('first',   ->{ sleep 0.075 })
second = Snail.new('second',  ->{ sleep 0.05 })
third  = Snail.new('third',   ->{ sleep 0.1 })

# ... and GO !!!
SnailRace.go(first, second, third)
```
Yes this it it ! And you should get this kind of output

```bash
########## THE RACE IS ABOUT TO START ##########

Ready... GOOOOOOO !!!
Progress: |================================================================================================================================================================================================|
+--------+-------------+-------------+-------------+-------------+
| Name   | Minimum     | Maximum     | Total       | Average     |
+--------+-------------+-------------+-------------+-------------+
| second | 0.051050679 | 0.051050679 | 0.051050679 | 0.051050679 |
| first  | 0.076135136 | 0.076135136 | 0.076135136 | 0.076135136 |
| third  | 0.100818434 | 0.100818434 | 0.100818434 | 0.100818434 |
+--------+-------------+-------------+-------------+-------------+
3 rows in set

########## THE RACE IS FINNISHED ##########
```

## Contribution
Contribution are more than welcome, be sure to add relevant unit tests and pass them all before subitting any code.
