import LearningLean.Basic


import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith


example {a b : ℚ}
(h1 : a - b = 4)
(h2 : a * b = 1) :
(a + b) ^ 2 = 20 :=
by
  calc
    (a + b) ^ 2 = (a - b) ^ 2 + 4 * (a * b) := by ring
    _ = 4 ^ 2 + 4 * 1 := by rw [h1, h2]
    _ = 20 := by ring


example {r s : ℝ}
(h1 : s = 3)
(h2 : r + 2 * s = -1) :
r = -7 :=
by
  calc
    r = r + 2*s - 2*s := by ring
    _ = -1 -2*s := by rw [h2]
    _ = -1 - 2 * 3 := by rw [h1]
    _ = -7 := by ring


example {a b m n : ℤ}
  (h1 : a * m + b * n = 1)
  (h2 : b ^ 2 = 2 * a ^ 2) :
  (2 * a * n + b * m) ^ 2 = 2 :=
by
  calc
    (2 * a * n + b * m) ^ 2
        = 2 * (a * m + b * n) ^ 2 + (m ^ 2 - 2 * n ^ 2) * (b ^ 2 - 2 * a ^ 2) := by ring
    _ = 2 * 1 ^ 2 + (m ^ 2 - 2 * n ^ 2) * (2 * a ^ 2 - 2 * a ^ 2) := by rw [h1, h2]
    _ = 2 := by ring

example {a b c d e f : ℤ}
  (h1 : a * d = b * c)
  (h2 : c * f = d * e) :
  d * (a * f - b * e) = 0 :=
by
  calc
    d * (a * f - b * e)
        = a * d * f - b * (d * e) := by ring
    _ = b * c * f - b * (d * e) := by rw [h1]
    _ = b * c * f - b * (c * f) := by rw [h2]
    _ = 0 := by ring

example {a b : ℝ}
  (h1 : a - 3 = 2 * b) :
  a ^ 2 - a  + 3 = 4 * b ^ 2 + 10 * b + 9 :=
by
  -- 1. Isolate 'a' using linarith
  have ha : a = 2 * b + 3 := by linarith
  calc
    a ^ 2 - a  + 3  = (a - 3) ^ 2 + 5 * a - 6 := by ring
    _ = (2 * b) ^ 2 + 5 * a - 6 := by rw [h1]
    -- 3. Use the isolated 'a' equation to substitute 'a'
    _ = (2 * b) ^ 2 + 5 * (2 * b + 3) - 6 := by rw [ha]
    _ = 4 * b ^ 2 + 10 * b + 9 := by ring


example {z : ℝ} (h1 : z ^ 2 - 2 = 0) :
   z ^ 4 - z ^ 3 - z ^ 2 + 2 * z + 1 = 3 :=
by
  calc
    z ^ 4 - z ^ 3 - z ^ 2 + 2 * z + 1 = ( z^2 - z + 1) * (z^2 - 2) + 3 := by ring
   _ = ( z^2 - z + 1)  * 0 + 3  := by rw [h1]
   _ = 3 := by ring
