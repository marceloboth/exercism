// Package twofer implements the "two-fer" sharing phrase.
package twofer

import "fmt"

// ShareWith returns the two-fer phrase for name, or "you" if name is empty.
func ShareWith(name string) string {
    if (name == "") {
        name = "you"
    }
	return fmt.Sprintf("One for %s, one for me.", name)
}
