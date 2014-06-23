---
title       : Compound Interest Calculator
subtitle    : What you need to get rich in 5 slides
author      : KimSia Sim
job         : Ambitious Beginner
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]     # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## The Compound Interest Calculator

1. Agenda
2. How the Calculator works in terms of mathematics
3. Actual Implementation of logic
4. Possible improvements
5. Contact us

---

## Agenda

1. The world needs a calculator to find out the compound interest and the eventual investment
2. Or loan..

---

## How it works

$$Value = Principal (1 + \frac{rate}n)^{nt} $$

Where 
 1. rate is the decimal representation of the interest rate. E.g. 3% means 0.03
 2. n is the number of times in a year the interest is compounded
 3. t is the number of years

---

## Actual implementation of logic

```
returns <- function(principal, annual_interest_rate, n, t) {
    rate <- annual_interest_rate / 100
    principal * ( (1 + (rate/n))^(n * t) )
}
```

---

## Possible improvements

 1. Next stage we want to allow people to calculate their retirement savings
 2. Will take into consideration the savings rate and inflation rate compounded
 3. Will educate people how much they need to save

---

## Contact us

Find us on Twitter <a href="https://twitter.com/KimStacks">@KimStacks</a>
