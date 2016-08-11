# Demo Swift Charts

This demonstration shows:

  * The [Swift](http://swift.org) programming language with
    [Apple](http://apple.com)
    [iOS](http://www.apple.com/ios/)
    [Xcode](https://developer.apple.com/xcode/)

  * The [Charts](https://github.com/danielgindi/Charts) library

This README describes how to create the project, if you want to try doing it yourself.

This work is thanks to the excellent [Appcode iOS charts API tutorial](http://www.appcoda.com/ios-charts-api-tutorial/)

To learn more about iOS Charts and MPAndriod Charts, see the official sites:

  * [iOS Charts](https://github.com/danielgindi/ios-charts) by [Daniel Gindi](https://github.com/danielgindi) 
  * [MPAndroidChart](https://github.com/PhilJay/MPAndroidChart) by [Phil Jahoda](https://github.com/PhilJay)

If you like iOS Charts and MPAndroid Charts, please consider making a donation to the authors. 

## How to create this app

Create a project:

  * Launch Xcode and create a new Xcode project. We call ours "Demo Swift Charts". [Help](doc/setup/create_a_new_xcode_project.md)
	
  * Add Charts to the project. We suggest using Cocoapods or Carthage. [Help](doc/setup/add_charts_to_the_project.md)

Create a view:

  * For example, edit `Main.storyboard` → `View Controller Scene` → `View Controller` → `View`.

  * In the right lower list of UI items, drag-and-drop a "View" item onto the storyboard.

  * Add contraints to make the the "View" item as big as you want.

Set the class:

  * Select the View. 

  * Go to the Identity Inspector.

  * Edit the "Custom Class" area.

      * Class: BarChartView
      * Module: Charts
    
Create an outlet:

  * For example, edit `Main.storyboard` → `View Controller Scene` → `View Controller` → `View`.

  * Open the Assistant Editor and edit `ViewController.swift`. 

  * Control-drag the view to the class. This creates the outlet. Name the outlet `demoBarChartView`. 

  * At the top of the class, add `import Charts`

The result looks like this:
	
```swift
import UIKit
import Charts
	
class ViewController: UIViewController {
	
  @IBOutlet weak var demoBarChartView: BarChartView!
	
  override func viewDidLoad() {
    super.viewDidLoad()
    demoBarChartView.noDataText = "The chart has no data."
  }
	
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
	
}
```
 
Verify:

  * Run the project.

  * You should see the text “No chart data available”.
 
  * If you don't see the text, then look in Xcode for any error messages, and also verify that you set the custom class correctly.
  
## Tracking

* Package: demo_swift_charts
* Version: 1.0.0
* Created: 2016-04-09
* Updated: 2016-04-30
* License: GPL
* Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
