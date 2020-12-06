# Smoothie House

> Build Smoothie House application with SwiftUI.

![Smoothie House App 1](./SmoothieHouse_1.png "Smoothie House App 1")

![Smoothie House App 2](./SmoothieHouse_2.png "Smoothie House App 2")

---

- SwiftUI 2.0 Curved Side Tab Bar
- SwiftUI 2.0 Smooth Curves
- SwiftUI Curves
- SwiftUI Side Tab Bar
- SwiftUI Complex Animations
- SwiftUI 2.0 Custom Tab Bar
- SwiftUI 2.0 Custom Animations

---

## How To Draw Smooth Curve

![How To Draw Smooth Curve](./HowToDrawSmoothCurve.png "How To Draw Smooth Curve")

```swift
struct Curve: Shape {
    // MARK: - PROPERTIES
    var midY : CGFloat

    // MARK: - ANIMATE
    var animatableData: CGFloat {
        get { return midY }
        set { midY = newValue }
    }

    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))

            // MARK: - CURVE
            let width = rect.width

            path.move(to: CGPoint(x: width, y: midY - 40))

            let to = CGPoint(x: width - 25, y: midY)
            let control1 = CGPoint(x: width, y: midY - 20)
            let control2 = CGPoint(x: width - 25, y: midY - 20)

            path.addCurve(to: to, control1: control1, control2: control2)

            let to1 = CGPoint(x: width, y: midY + 40)
            let control3 = CGPoint(x: width - 25, y: midY + 20)
            let control4 = CGPoint(x: width, y: midY + 20)

            path.addCurve(to: to1, control1: control3, control2: control4)
        }
    }
}
```

```swift
struct ItemCurve: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))

            // MARK: - CURVE
            let width = rect.width
            let midY = rect.height / 2

            path.move(to: CGPoint(x: width, y: midY - 60))

            let to = CGPoint(x: width - 40, y: midY)
            let control1 = CGPoint(x: width, y: midY - 30)
            let control2 = CGPoint(x: width - 40, y: midY - 30)

            path.addCurve(to: to, control1: control1, control2: control2)

            let to1 = CGPoint(x: width, y: midY + 60)
            let control3 = CGPoint(x: width - 40, y: midY + 30)
            let control4 = CGPoint(x: width, y: midY + 30)

            path.addCurve(to: to1, control1: control3, control2: control4)
        }
    }
}
```

---

[SwiftUI Complex UI - Food App UI - Side Tab Bar - Complex Smooth Curves - SwiftUI 2.0 Tutorials by Kavsoft](https://www.youtube.com/watch?v=ZJrKj-HW6ss)
