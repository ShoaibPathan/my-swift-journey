# MVVM iOS App Architecture

Further Reading: [Modern MVVM iOS App Architecture with Combine and SwiftUI](https://www.vadimbulavin.com/modern-mvvm-ios-app-architecture-with-combine-and-swiftui/)

## History

- MVVM has its roots in the Application Model pattern

- The primary goal of the pattern was to split two kinds of logic, the presentation, and the business logic, into two separate objects: the Application Model and the Domain Model, respectively.

## The Purpose of MVVM

- The goal of MVVM is to separate the business and presentation logic from the UI. It improves testability and maintainability, which are often the key success factors of an app.

- To achieve its goal, MVVM minimizes decision-making in the views and moves view state and behavior into the view model.

- The view does not pull data from the view model.

- The view is not responsible for updating itself from the view model.

- The view has its state managed by the view model.

Such a design allows us to test presentation logic in isolation from the GUI stack.

## The MVVM pattern

- MVVM is the UI pattern.

- MVVM provides a set of guidelines on:
  - How to display information on the UI.
  - How to handle interactions between the user and the app.
  - How to interpret user inputs into actions upon business rules and data.

MVVM can be broken down into the three components that follow a strict dependency rule:
