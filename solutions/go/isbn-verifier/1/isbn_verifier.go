package isbnverifier

func IsValidISBN(isbn string) bool {
	sum, pos := 0, 0

	for _, r := range isbn {
		switch {
		case r == '-':
			continue
		case r >= '0' && r <= '9' && pos < 10:
			sum += int(r-'0') * (10 - pos)
		case r == 'X' && pos == 9:
			sum += 10
		default:
			return false
		}
		pos++
	}

	return pos == 10 && sum%11 == 0
}
