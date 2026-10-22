# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Carter Rayborn
Stephen Prescott

## Summary
This lab seeks to build on what we learned last week with half and full adders, but with a twist of one's and two's complements while also using half subtractors. This became complicated much faster because unlike with addition, one's and two's complements have to be completely sequentially with a loop, which was more difficult to actually implement, unlike with the half adder. Because the adder and subtractor are so similar, we were even able to use the code that we implemented last week to begin the skeleton for the work that we did this week. Because of this, it was not as difficult as a process as initially expected, but we definitely struggled for a minute with the looping variables.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The main different between a half adder and a full adder in this case is a half adder adds two one bit binary inputs to compute a sum and a carry, while a subtractor subtracts a one bit binary input to compute a difference and a borrow. Between the two, the sum and the difference have the exact same values on a truth table, but the carry and borrow vary slightly.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The main issue is that it begins a combinatorial loop, as when a carry out is generated at the most significant bit, it absolutely has to be fed back around to the least significant bit. This can cause significant timing delays and run time errors depending on the amount of information, as it is very easy to find yourself stuck in an infinite loop.

### 3 - What is the edge case and problem with Two’s Complement number representation?
Because of the way that two's complement functions, it has very specific edge cases at the very bottom of its range of numbers to the very top of its range of numbers. Specifically, there is one more negative number than there is positive numbers. This means that you cannot simply invert the sign of a number, as -8 does not have a match for positive 8, and there must be an adjustment made for that issue.
