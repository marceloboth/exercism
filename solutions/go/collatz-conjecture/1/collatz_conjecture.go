// Package collatzconjecture computes step counts for the Collatz Conjecture
package collatzconjecture

import "errors"

// ErrNonPositive is returned when the input is zero or negative.
var ErrNonPositive = errors.New("input must be a positive integer")

// CollatzConjecture returns the number of steps needed to reach 1 from n,
// following the Collatz rules: if n is even, divide it by 2; if n is odd,
// multiply by 3 and add 1.
// It returns an error if n is not a positive integer.
func CollatzConjecture(n int) (int, error) {
	if n <= 0 {
		return 0, ErrNonPositive
	}

	steps := 0
	for n != 1 {
		if n%2 == 0 {
			n /= 2
		} else {
			n = 3*n + 1
		}
		steps++
	}

	return steps, nil
}
