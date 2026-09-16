# Polynomial long division

Polynomial long division is just the *algebra version* of regular long division.  
You repeatedly divide the highest‑degree term, multiply, subtract, and continue until the remainder has smaller degree than the divisor.

---

### 🎯 **Quick takeaway**
To divide one polynomial by another, match the leading terms, subtract, and repeat.  
It works exactly like long division with numbers.

---

## 📘 **Small example**
Divide  
\[
x^2 + 5x + 6 \quad \text{by} \quad x + 2
\]

---

### ✏️ **Step 1: Divide leading terms**
Leading term of dividend: \(x^2\)  
Leading term of divisor: \(x\)

\[
\frac{x^2}{x} = x
\]

Write **x** on top.

---

### ✏️ **Step 2: Multiply and subtract**
Multiply the divisor by \(x\):

\[
x(x + 2) = x^2 + 2x
\]

Subtract from the original polynomial:

\[
(x^2 + 5x + 6) - (x^2 + 2x) = 3x + 6
\]

---

### ✏️ **Step 3: Repeat with new polynomial**
Now divide:

\[
\frac{3x}{x} = 3
\]

Write **3** on top.

Multiply:

\[
3(x + 2) = 3x + 6
\]

Subtract:

\[
(3x + 6) - (3x + 6) = 0
\]

---

## ✅ **Final Answer**
\[
\frac{x^2 + 5x + 6}{x + 2} = x + 3
\]

Remainder is 0.

---

## 📌 **Why this works**
You’re peeling off the highest‑degree part of the polynomial each time, reducing the problem step by step until nothing is left (or only a small remainder).

---

If you want, I can show a harder example, synthetic division, or how to check your answer.
