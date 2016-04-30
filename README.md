# Demo Swift Charts

This is a demonstration of Apple iOS Xcode, using the Swift language, to create a project with the iOS Charts library.

This README describes how to create the project, if you want to try doing it yourself.

This work is thanks to the excellent [Appcode iOS charts API tutorial](http://www.appcoda.com/ios-charts-api-tutorial/)

To learn more about iOS Charts and MPAndriod Charts, see the official sites:

  * [iOS Charts](https://github.com/danielgindi/ios-charts) by [Daniel Gindi](https://github.com/danielgindi) 
  * [MPAndroidChart](https://github.com/PhilJay/MPAndroidChart) by [Phil Jahoda](https://github.com/PhilJay)

If you like iOS Charts and MPAndroid Charts, please consider making a donation to the authors. 

## How to create this app

<ol type="1">

<li>Create a project.

  <ol type="1">
	
    <li>Launch Xcode and create a new Xcode project. We call ours "Demo Swift Charts". [Help](doc/setup/create_a_new_xcode_project.md)
	
    <li>Add Charts to the project. We suggest using Cocoapods or Carthage. [Help](doc/setup/add_charts_to_the_project.md)
	
  </ol>

</li>

<li>Create a view.

  <ol type="1">

    <li>For example, edit `Main.storyboard` → `View Controller Scene` → `View Controller` → `View`.

    <li>In the right lower list of UI items, drag-and-drop a "View" item onto the storyboard.

    <li>Add contraints to make the the "View" item as big as you want.

  </ol>

</li>

<li>Set the class.

  <ol type="1">
  
    <li>Select the View. 

    <li>Go to the Identity Inspector.

    <li>Edit the "Custom Class" area.
      <ul> 
        <li>Class: BarChartView
        <li>Module: Charts
      </ul>
 
  </ol>
    
</li>
   
<li>Create an outlet.

  <ol type="1">

    <li>For example, edit `Main.storyboard` → `View Controller Scene` → `View Controller` → `View`.

    <li>Open the Assistant Editor and edit `ViewController.swift`. 

    <li>Control-drag the view to the class. This creates the outlet. Name the outlet `demoBarChartView`. 

    <li>At the top of the class, add `import Charts`

  </ol>

</li>
  
<li>The result looks like this.
	
```
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
 
</li>

<li>Verify.

  <ol type="1">
   
    <li>Run the project.

    <li>You should see the text “No chart data available”.
 
    <li>If you don't see the text, then look in Xcode for any error messages, and also verify that you set the custom class correctly.
  
  </ol>

</li>

</ol>
   
## Tracking

* Package: demo_swift_charts
* Version: 1.0.0
* Created: 2016-04-09
* Updated: 2016-04-30
* License: GPL
* Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
