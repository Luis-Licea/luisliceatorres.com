---
title: "location"
date: 2026-06-20T00:56:55-05:00
description: ""
---


An arm location can be described using the following directions:

- elbow: x-clock, y-clock
- wrist: x-clock, y-clock
- metacarpals: x-clock, y-clock
- fingers: x-clock, y-clock
- palm: x-clock, y-clock (auxiliary when finger direction is not enough)

```txt
     []  
    [  ]|   <- elbow points at 6,6,x
    [  ]|__ <- wrist points at 3,x,9
    [__]   L <- metacarpals at 6,6,x
    [][]   ^--- fingers point  3,3,9
    [][]
     

    x-clock
    left hand on level with 3
       12 
  11        01
10     []     2
9    |[  ]|    3
8:30   []     3:30
 8     ||    4
   7        5
       06
       
    y-clock
    left hand on level with 3
       12 
  11        01
10     []     2
9     [||]     3
8:30   []     3:30
 8     ||_   4
   7        5
       06
       

    z-clock
    left hand on same side as 3

     11  12  01
   10          2
9:30     __     2:30
   9    |[]|    3
8:30            3:30
    8          4
      7  06  5
```

Fo example, the arm location for open position is: e5,5 w3,11, m5,11 f1-5 9,2