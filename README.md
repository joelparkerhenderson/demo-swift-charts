# Demo Swift Charts

This is a demonstration of Apple iOS Xcode, using the Swift language, to create a project with the iOS Charts library.

This README describes how to create the project, if you want to try doing it yourself.

To learn more about Swift and Realm, see the official documentation for [Realm Swift](https://realm.io/docs/swift/latest/)

## How to create the project

1. Launch Xcode and create a new project. We call ours "Demo Swift Charts".

  * Need help? See our repo [demo_swift_hello_world](https://github.com/joelparkerhenderson/demo_swift_hello_world).

1. Add Swift Charts to the project.

  * To add Charts as a dependency, we prefer using Carthage.

  * If you prefer, you can add it by using a dynamic framework or using Cocoapods.

## Create a view

1. Add Charts to the view.

  * Edit `ViewController.swift`

     import UIKit
     import Charts

     class ViewController: UIViewController, ChartViewDelegate {

     }
## Tracking

* Package: demo_swift_charts
* Version: 1.0.0
* Created: 2016-04-09
* Updated: 2016-04-29
* License: GPL
* Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
