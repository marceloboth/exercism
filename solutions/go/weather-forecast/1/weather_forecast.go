// Package weather provides forecast information.
package weather

// CurrentCondition represents the condition now.
var CurrentCondition string
// CurrentLocation represents the location at the moment.
var CurrentLocation string

// Forecast returns the forecast based on the city and the condition.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
