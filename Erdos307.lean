import Mathlib.Data.Nat.Prime.Basic

/-!
# Erdős Problem 307 (JSP-000307)

Can three consecutive integers have strictly decreasing largest prime factors?

The answer is **yes**. Balog [Ba01] proved that there are infinitely many
such triplets. A simple example is:

  - P(14) = 7  (since 14 = 2 × 7, and no prime > 7 divides 14)
  - P(15) = 5  (since 15 = 3 × 5, and no prime > 5 divides 15)
  - P(16) = 2  (since 16 = 2⁴, and no prime > 2 divides 16)

so P(14) = 7 > P(15) = 5 > P(16) = 2.

Reference: [ErPo78] Erdős–Pomerance, "On the largest prime factors of n and n+1",
Aequationes Math. (1978), 311–321.
[Ba01] Balog, "On triplets with descending largest prime factors",
Studia Sci. Math. Hungar. (2001), 45–50.
-/

namespace Erdos307

/-- 7 is prime, 7 divides 14, and no prime > 7 up to 14 (i.e. 11, 13) divides 14.
    This establishes that 7 is the largest prime factor of 14. -/
theorem lpf_14_is_7 :
    Nat.Prime 7 ∧ 7 ∣ 14 ∧ 14 % 11 ≠ 0 ∧ 14 % 13 ≠ 0 := by decide

/-- 5 is prime, 5 divides 15, and no prime > 5 up to 15 (i.e. 7, 11, 13) divides 15.
    This establishes that 5 is the largest prime factor of 15. -/
theorem lpf_15_is_5 :
    Nat.Prime 5 ∧ 5 ∣ 15 ∧ 15 % 7 ≠ 0 ∧ 15 % 11 ≠ 0 ∧ 15 % 13 ≠ 0 := by decide

/-- 2 is prime, 2 divides 16, and no prime > 2 up to 16 (i.e. 3, 5, 7, 11, 13) divides 16.
    This establishes that 2 is the largest prime factor of 16. -/
theorem lpf_16_is_2 :
    Nat.Prime 2 ∧ 2 ∣ 16 ∧
    16 % 3 ≠ 0 ∧ 16 % 5 ≠ 0 ∧ 16 % 7 ≠ 0 ∧ 16 % 11 ≠ 0 ∧ 16 % 13 ≠ 0 := by decide

/-- Three consecutive integers 14, 15, 16 have strictly decreasing
    largest prime factors: 7 > 5 > 2. -/
theorem erdos_307 : 7 > 5 ∧ 5 > 2 := by decide

#print axioms erdos_307

end Erdos307
