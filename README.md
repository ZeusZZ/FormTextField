# TextField

This a TextField subclass that supports styling for valid / invalid just using a boolean, formatters so you can easily format for example credit card numbers, phone numbers and so on. It supports input validators so you can limit the contents of a UITextField to maximum_length, maximum_value or even regex (perfect for validating emails).

## Payment example

### Demo

<p align="center">
  <img src="https://raw.githubusercontent.com/3lvis/TextField/master/GitHub/payment2.gif"/>
</p>

### Code

```swift
lazy var emailTextField: TextField = {
    let textField = TextField(frame: frame)
    textField.inputType = .Email
    textField.placeholder = "Email"

    let validation = Validation()
    validation.required = true
    let inputValidator = InputValidator(validation: validation)
    textField.inputValidator = inputValidator

    return textField
}()

lazy var cardNumberTextField: TextField = {
    let textField = TextField(frame: frame)
    textField.inputType = .Integer
    textField.formatter = CardNumberFormatter()
    textField.placeholder = "Card Number"

    let validation = Validation()
    validation.maximumLength = "1234 5678 1234 5678".characters.count
    validation.required = true
    let inputValidator = NumberInputValidator(validation: validation)
    textField.inputValidator = inputValidator

    return textField
    }()

lazy var cardExpirationDateTextField: TextField = {
    let textField = TextField(frame: frame)
    textField.inputType = .Integer
    textField.formatter = CardExpirationDateFormatter()
    textField.placeholder = "Expiration Date (MM/YY)"

    let validation = Validation()
    validation.maximumLength = "MM/YY".characters.count
    validation.required = true
    let inputValidator = NumberInputValidator(validation: validation)
    textField.inputValidator = inputValidator

    return textField
    }()

lazy var cvcTextField: TextField = {
    let textField = TextField(frame: frame)
    textField.inputType = .Number
    textField.placeholder = "CVC"

    let validation = Validation()
    validation.maximumLength = "CVC".characters.count
    validation.required = true
    let inputValidator = NumberInputValidator(validation: validation)
    textField.inputValidator = inputValidator

    return textField
    }()
```

## Installation

**TextField** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TextField'
```

## License

**TextField** is available under the MIT license. See the LICENSE file for more info.

## Author

Elvis Nuñez, [@3lvis](https://twitter.com/3lvis)
