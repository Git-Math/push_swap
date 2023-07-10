# Push swap
Algorithm to sort data on a stack with a limited set of instructions, using the lowest possible number of actions.

## Rules
There are 2 stacks named a and b.  

To start with:
- a contains a random number of either positive or negative numbers without any duplicates
- b is empty

The goal is to sort in ascending order numbers into stack a with those operations:
- sa : swap a - swap the first 2 elements at the top of stack a. Do nothing if there is only one or no elements.
- sb : swap b - swap the first 2 elements at the top of stack b. Do nothing if there is only one or no elements.
- ss : sa and sb at the same time.
- pa : push a - take the first element at the top of b and put it at the top of a. Do nothing if b is empty.
- pb : push b - take the first element at the top of a and put it at the top of b. Do nothing if a is empty.
- ra : rotate a - shift up all elements of stack a by 1. The first element becomes the last one.
- rb : rotate b - shift up all elements of stack b by 1. The first element becomes the last one.
- rr : ra and rb at the same time.
- rra : reverse rotate a - shift down all elements of stack a by 1. The last element becomes the first one.
- rrb : reverse rotate b - shift down all elements of stack b by 1. The last element becomes the first one.
- rrr : rra and rrb at the same time

## How to compile
From the root of the repository run `make`

## How to run
From the root of the repository run `./push_swap a1 a2 a3...`

## Options
-v: debug mode  
-c: each operation is written in a different color

## Examples
```
$ ./push_swap 2 1 3 6 5 8
ra pb rra pb pb ra pb ra pb pb pa pa pa pa pa pa

$ ./push_swap -v 2 1 3 6 5 8
ra
a = 2 8 5 6 3 1
b =
pb
a = 2 8 5 6 3
b = 1
rra
a = 8 5 6 3 2
b = 1
pb
a = 8 5 6 3
b = 1 2
pb
a = 8 5 6
b = 1 2 3
ra
a = 6 8 5
b = 1 2 3
pb
a = 6 8
b = 1 2 3 5
ra
a = 8 6
b = 1 2 3 5
pb
a = 8
b = 1 2 3 5 6
pb
a =
b = 1 2 3 5 6 8
pa
a = 8
b = 1 2 3 5 6
pa
a = 8 6
b = 1 2 3 5
pa
a = 8 6 5
b = 1 2 3
pa
a = 8 6 5 3
b = 1 2
pa
a = 8 6 5 3 2
b = 1
pa
a = 8 6 5 3 2 1
b =
```
