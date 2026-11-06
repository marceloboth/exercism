package resistorcolor
import "slices"

// Colors returns the list of all colors.
var colors = []string{
    "black", "brown", "red", "orange", "yellow",
    "green", "blue", "violet", "grey", "white",
}
func Colors() []string {
	out := make([]string, len(colors))
    copy(out, colors)
    return out
}

// ColorCode returns the resistance value of the given color.
func ColorCode(color string) int {
	return slices.Index(colors, color)
}
