# Demo Swift Charts

This is a demonstration of Apple iOS Xcode, using the Swift language, to create a project with the iOS Charts library.

This README describes how to create the project, if you want to try doing it yourself.

This work is thanks to the excellent [Appcode iOS charts API tutorial](http://www.appcoda.com/ios-charts-api-tutorial/)

To learn more about iOS Charts and MPAndriod Charts, see the official sites:

  * [iOS Charts](https://github.com/danielgindi/ios-charts) by [Daniel Gindi](https://github.com/danielgindi) 
  * [MPAndroidChart](https://github.com/PhilJay/MPAndroidChart) by [Phil Jahoda](https://github.com/PhilJay)

## How to create this app

1. Create a project.

  1. Launch Xcode and create a new Xcode project. We call ours "Demo Swift Charts". [Help](doc/setup/create_a_new_xcode_project.md)

  1. Add Charts to the project. We suggest using Cocoapods or Carthage. [Help](doc/setup/add_charts_to_the_project.md)

1. Create a view.

  1. For example, edit `Main.storyboard` → `View Controller Scene` → `View Controller` → `View`.

  1. In the right lower list of UI items, drag-and-drop a "View" item onto the storyboard.

  1. Add contraints to make the the "View" item as big as you want.

1. Set the class.

  1. Select the View. 

  2. Go to the Identity Inspector.

  3. Edit the "Custom Class" area.

     * Class: BarChartView

     * Module: Charts

1. Create an outlet.

  1. For example, edit `Main.storyboard` → `View Controller Scene` → `View Controller` → `View`.

  1. Open the Assistant Editor and edit `ViewController.swift`. 

  1. Control-drag the view to the class. This creates the outlet. Name the outlet `demoBarChartView`. 

  1. At the top of the class, add `import Charts`

6. The result looks like this.
	
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
 
1. Verify.
 
  1. Run the project.

  1. You should see the text “No chart data available”.
 
  1. If you don't see the text, then look in Xcode for any error messages, and also verify that you set the custom class correctly.
  
   
## Tracking

* Package: demo_swift_charts
* Version: 1.0.0
* Created: 2016-04-09
* Updated: 2016-04-30
* License: GPL
* Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
