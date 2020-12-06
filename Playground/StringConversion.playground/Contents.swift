import SwiftUI

var numberOfCountries: Int = 12
var temperature: Float = 25.7

var numberOfCountriesString: String = String(numberOfCountries)
var temperatureString: String = String(temperature)

var welcomeMessage: String = "You have visited " + numberOfCountriesString + " countries so far."
var greetingMessage: String = "The temperature is " + temperatureString + " degrees."

var appWelcomeMessage: String = "You have visited \(numberOfCountries) countries so far."
