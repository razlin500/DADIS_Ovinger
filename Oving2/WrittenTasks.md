# Task 1

2.
Let's assume we have a value 'A', which is currently 0. If we change the value of 'A' to 1, we have then created *an event*. An event is when we change the value of a signal. Let us now take a look at an expression (assume 'A'=0, 'B'=1):

'P' <= and('A', 'B') after 2 ns;

If we now change 'A' to 1, then we see that 'P' will change it's value from 0 to 1 after 2 ns. This change of 'P' caused by 'A' is called a transaction.

A simulation cycle is the process of an event happening -> (maybe) causing a transaction -> wait for next event.

3. Yap yap