# iOSExtensionLib
This lib contains variaty helpful iOS extension in Swift.

### __`UIColor`__:
  - `init(hex: String)`, init `UIColor` with a string of hex number.
  - `class func randomColor() -> UIColor!`, generate random color.
  - `class func randomVividColor() -> UIColor!`, generate random color with calibration.
  - `func lighterColorWithFactor(_ factor: CGFloat = default) -> UIColor!`, get lighter color.
  - `func darkerColorWithFactor(_ factor: CGFloat = default) -> UIColor!`, get darker color.

-----
### __`UIGestureRecognizer`__ Subclass:
  - [`TouchDelayGestureRecognizer`](./TouchDelayGestureRecognizer.swift), this gesture recognizer will delay touches to it's view, so if for example some pan gesture recognizes the pan is happening, the other possible gestures (like tap) will not fire.
  - [`TouchIndicatorGestureRecognizer`](./TouchIndicatorGestureRecognizer.swift), this gesture recognizer will show indicators for every touch, which will follow touch movement. It supports multitouch, and it's possible to show custom indicator view by overriding indicator() func.