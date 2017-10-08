
# FluidAnchor

[![CI Status](http://img.shields.io/travis/audrl1010/FluidAnchor.svg?style=flat)](https://travis-ci.org/audrl1010/FluidAnchor)
[![Version](https://img.shields.io/cocoapods/v/FluidAnchor.svg?style=flat)](http://cocoapods.org/pods/FluidAnchor)
[![License](https://img.shields.io/cocoapods/l/FluidAnchor.svg?style=flat)](http://cocoapods.org/pods/FluidAnchor)
[![Platform](https://img.shields.io/cocoapods/p/FluidAnchor.svg?style=flat)](http://cocoapods.org/pods/FluidAnchor)

<img src="https://github.com/audrl1010/FluidAnchor/blob/master/Example/Logo.png" alt="" />

FluidAnchor is a framework that makes it easy to use Auto Layout Anchor.

## Requirements
- iOS 9.0+

## Installation

FluidAnchor is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'FluidAnchor'
```

## Usage
### Quick Start
```swift
import FluidAnchor

class ViewController: UIViewController {

  var tableView = UITableView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addSubview(tableView)
    
    tableView.flu
      .topAnchor(equalTo: view.safeAreaLayoutGuide.topAnchor)
      .leftAnchor(equalTo: view.safeAreaLayoutGuide.leftAnchor)
      .rightAnchor(equalTo: view.safeAreaLayoutGuide.rightAnchor)
      .bottomAnchor(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
  }
}
```
### Tip

#### Constant
```swift
import FluidAnchor
class ProfileViewController: UIViewController {
  var profileImageView = UIImageView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addSubview(profileImageView)
    
    profileImageView.flu
      .topAnchor(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5)
      .leftAnchor(equalTo: view.leftAnchor, constant: 10)
      .heightAnchor(equalToConstant: 50)
      .widthAnchor(equalToConstant: 50)
  }
}
```
#### Animation
```swift
import FluidAnchor

class ChatVC: UIViewController {

  var inputBar = InputBar()
  
  var inputBarBottomConstraint: NSLayoutConstraint?
  
  override func viewDidLoad() {
    ...
    // You can specify the constraint to use later when animating.
    inputBar.flu
      .bottomAnchor(
        equalTo: view.safeAreaLayoutGuide.bottomAnchor,
        constraint: &inputBarBottomConstraint
      )
    ...
  }
  
  ...
  func keyboardWillShow(_ notification: Notification) {
    ...
    inputBarBottomConstraint?.constant = (someting value)
    
    UIView.animate(withDuration: keyboardDuration) {
      view.layoutIfNeeded()
    }
    ...
  }
  ...
}
```

## Author

audrl1010, audrl1010@naver.com

## License

FluidAnchor is available under the MIT license. See the LICENSE file for more info.
