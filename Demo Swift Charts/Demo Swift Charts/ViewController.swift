import UIKit
import Charts

class ViewController: UIViewController {

  @IBOutlet weak var demoBarChartView: BarChartView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setChart()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  func setChart() {
    
    // Create some data entries for the bar chart.
    // This code is intentionally simple for this demo.
    let entries: [BarChartDataEntry] = [
      BarChartDataEntry(value: 1, xIndex: 0),
      BarChartDataEntry(value: 2, xIndex: 1),
      BarChartDataEntry(value: 3, xIndex: 2),
    ]

    // Create the chart's data set by using the entries.
    // Set the chart's label which will render as a chart legend.
    let chartDataSet = BarChartDataSet(yVals: entries, label: "Demo Label")

    // Create the chart's data by using the data set.
    // Set the xValues which will render at the top of the chart.
    let chartData = BarChartData(xVals: ["A", "B", "C"], dataSet: chartDataSet)

    // Finally add the chart data to the chart view.
    // This will display the chart data, its data set, and its data entries.
    demoBarChartView.data = chartData

    // OPTIONAL

    // Set the background color.
    demoBarChartView.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 1.0, alpha: 1.0)

    // Move the x-axis labels to the bottom of the chart.
    demoBarChartView.xAxis.labelPosition = .Bottom
    
    // Set the colors of the data set, which will render as the bar colors.
    // You can use your own colors or any of the predefined templates.
    chartDataSet.colors = ChartColorTemplates.colorful()
    
    // Set the description text, which renders in the lower right corner.
    // If you prefer to hide the description, then use a blank string.
    demoBarChartView.descriptionText = "Demo Description"

    // Animate the chart by having it fade in during 2 seconds,
    // and also having the bars start at zero then grow during 5 seconds.
    demoBarChartView.animate(xAxisDuration: 2.0, yAxisDuration: 5.0)

    // Add a limit line, which is a horizontal line that is
    // typically useful as a visual indicator of a goal value.
    demoBarChartView.rightAxis.addLimitLine(ChartLimitLine(limit: 2.5, label: "Demo Limit Line"))

  }

}

