//
//  ViewController.swift
//  ImmigrationStation
//
//  Created by Brian Cisto on 7/29/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    var stateDictionary: [String: [String]] = [
        "California": ["Hot", "$1,200 to $1,620", "130 to 145", "$58,500 to $62,400"],
        "Hawaii": ["Very Hot", "$1,200 to $1,620", "145+", "66,700+"],
        "Maryland": ["Hot", "$1,200 to $1,620", "120 to 130", "66,700+"],
        "New Jersey": ["Moderate", "$1,200 to $1,620", "110 to 120", "$56,000 to $58,500"],
        "Massachusetts": ["Cold", "$1,200 to $1,620", "130 to 145", "$66,700+"],
        "New York": ["Cold", "$1,200 to $1,620", "130 to 145", "$66,700+"],
        "Colorado": ["Cold", "$1,200 to $1,620", "100 to 110", "$62,400 to $66,700"],
        "Washington": ["Cold", "$1,200 to $1,620", "110 to 120", "$66,700+"],
        "Alaska": ["Very Cold", "$1,200 to $1,620", "120 to 130", "$66,700+"],
        "Virginia": ["Hot", "$1,200 to $1,620", "100 to 110", "$62,400 to $66,700"],
        "Connecticut": ["Moderate", "$1,010 to $1,180", "120 to 130", "$58,500 to $62,400"],
        "Florida": ["Very Hot", "$1,010 to $1,180", "100 to 110", "$50,000 to $56,500"],
        "North Dakota": ["Very Cold", "$820 to $860", "95 to 100", "$66,800+"],
        "Indiana": ["Moderate", "$820 to $860", "80 to 90", "$56,000 to $58,500"],
        "Oklahoma": ["Hot", "$700 to $810", "80 to 90", "$58,500 to $62,400"],
        "Montana": ["Very Cold", "$700 to $810", "95 to 100", "$56,000 to $58,500"],
        "Ohio": ["Moderate", "$700 to $810", "90 to 95", "$56,000 to $58,500"],
        "Alabama": ["Very Hot", "$700 to $810", "80 to 90", "$50,000 to $56,500"],
        "Iowa": ["Cold", "$700 to $810", "90 to 95", "$50,000 to $56,500"],
        "Mississippi": ["Very Hot", "$700 to $810", "80 to 90", "$62,400 to $66,700"],
        "Kentucky": ["Hot", "$700 to $810", "90 to 95", "$62,400 to $66,700"],
        "South Dakota": ["Cold", "$700 to $810", "95 to 100", "$66,800+"],
        "Arkansas": ["Very Hot", "$700 to $810", "80 to 90", "$58,500 to $62,400"],
        "West Virginia": ["Moderate", "$700 to $810", "90 to 95", "$58,500 to $62,400"],
        "Delaware": ["Hot", "$1,010 to $1,180", "100 to 110", "$58,500 to $62,400"],
        "New Hampshire": ["Very Cold", "$1,010 to $1,180", "100 to 110", "$62,400 to $66,700"],
        "Oregon": ["Cold", "$1,010 to $1,180", "130 to 145", "$66,700+"],
        "Nevada": ["Moderate", "$1,010 to $1,180", "100 to 110", "$66,700+"],
        "Arizona": ["Very Hot", "$1,010 to $1,180", "100 to 110", "$56,000 to $58,500"],
        "Utah": ["Cold", "$1,010 to $1,180", "95 to 100", "$50,000 to $56,500"],
        "Texas": ["Very Hot", "$1,010 to $1,180", "95 to 100", "$56,000 to $58,500"],
        "Illinois": ["Moderate", "$1,010 to $1,180", "95 to 100", "$58,500 to $62,400"],
        "Georgia": ["Very Hot", "$865 to $1,010", "80 to 90","$50,000 to $56,500"],
        "Rhode Island": ["Moderate", "$865 to $1,010", "110 to 120",  "$66,700+"],
        "Vermont": ["Very Cold", "$865 to $1,010", "110 to120", "$58,500 to $62,400"],
        "Minnesota":  ["Very Cold", "$865 to $1,010", "100 to 110", "$56,000 to $58,500"],
        "Pennsylvania": ["Moderate", "$865 to $1,010", "100 to 110", "$58,500 to $62,400"],
        "North Carolina": ["Hot", "$865 to $1,010", "95 to 100", "$50,000 to $56,500"],
        "South Carolina": ["Very Hot", "$865 to $1,010", "90 to 95", "$62,400 to $66,700"],
        "Michigan": ["Cold", "$865 to $1,010", "90 to 95", "$58,500 to $62,400"],
        "Tennessee": ["Hot", "$865 to $1,010", "80 to 90", "$56,000 to $58,500"],
        "Louisiana": ["Very Hot", "$865 to $1,010", "90 to 95", "$50,000 to $56,500"],
        "Wisconsin": ["Very Cold", "$820 to $860", "95 to 100", "$56,000 to $58,500"],
        "Wyoming": ["Very Cold", "$820 to $860", "95 to 100", "$58,500 to $62,400"],
        "Maine": ["Very Cold", "$820 to $860", "110 to 120", "$56,000 to $58,500"],
        "Idaho": ["Cold", "$820 to $860", "95 to 100", "$56,000 to $58,500"],
        "Kansas": ["Hot", "$820 to $860", "80 to 90", "$62,400 to $66,700"],
        "New Mexico": ["Moderate", "$820 to $860", "90 to 95", "$50,000 to $56,500"],
        "Missouri": ["Hot", "$820 to $860", "90 to 95", "$56,000 to $58,500"],
        "Nebraska": ["Moderate", "$820 to $860", "90 to 95", "$62,400 to $66,700"]]
    var pickerData: [[String]] = [[String]]()
    
    var stateResultLabelText: String=""
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView)  -> Int {
        return 4
    }
        // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 9
    }
    

    @IBOutlet var iconView: UIImageView!
    @IBOutlet var mainView: UIView!
    @IBOutlet var gradientView: GradientView!
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var stateResultLabel: UILabel!
    @IBOutlet var greenButton: UIButton!
    @IBOutlet var weatherLabel: UILabel!
    @IBOutlet var rentLabel: UILabel!
    @IBOutlet var costOfLivingLabel: UILabel!
    @IBOutlet var salaryLabel: UILabel!
    
    @IBAction func submitButton(_ sender: Any) {
        let selectedWeatherValue = pickerData[0][pickerView.selectedRow(inComponent: 0)]
        let selectedRentValue = pickerData[1][pickerView.selectedRow(inComponent: 1)]
        let selectedCostOfLivingValue = pickerData[2][pickerView.selectedRow(inComponent: 2)]
        let selectedSalaryValue = pickerData[3][pickerView.selectedRow(inComponent: 3)]
        if(selectedRentValue != "Rent Per Month" && selectedSalaryValue != "Average Yearly Salary" && selectedCostOfLivingValue != "Cost of Living Index" && selectedWeatherValue != "Weather") {
            if(selectedRentValue != "-" && selectedSalaryValue != "-" && selectedCostOfLivingValue != "-" && selectedWeatherValue != "-") {
                checkOptimalState(selectedWeatherValue: selectedWeatherValue, selectedRentValue: selectedRentValue, selectedCostOfLivingValue: selectedCostOfLivingValue, selectedSalaryValue: selectedSalaryValue)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        
        self.gradientView.colors=[
            .white,
            .blue
        ]
        
        pickerData = [["Weather", "Very Cold", "Cold", "Moderate", "Hot", "Very Hot", "-", "-", "-"], ["Rent Per Month", "$700 to $810", "$820 to $860", "$865 to $1,010", "$1,010 to $1,180", "$1,200 to $1,620", "-", "-", "-"], ["Cost of Living Index", "80 to 90", "90 to 95", "95 to 100", "100 to 110", "110 to 120", "120 to 130", "130 to 145", "145+"], ["Average Yearly Salary", "$50,000 to $56,500", "$56,000 to $58,500", "$58,500 to $62,400", "$62,400 to $66,700", "$66,700+", "-", "-", "-"]]
        
        self.mainView.addSubview(gradientView)
        self.mainView.sendSubviewToBack(gradientView)
        self.mainView.addSubview(iconView)
        self.mainView.addSubview(greenButton)
        self.mainView.bringSubviewToFront(iconView)
        self.mainView.bringSubviewToFront(pickerView)
        self.mainView.bringSubviewToFront(greenButton)
        // Do any additional setup after loading the view.
    }
    
    func checkOptimalState(selectedWeatherValue: String, selectedRentValue: String, selectedCostOfLivingValue: String, selectedSalaryValue: String) {
        
        var highestRank: Double = 0.00
        var states: [String] = []
        for x in stateDictionary.keys {
            var rank: Double=0.00
            let stateData: [String] = stateDictionary[x]!
            if(stateData[0]==selectedWeatherValue) {
                rank+=0.25
            }
            if(stateData[1]==selectedRentValue) {
                rank+=0.25
            }
            if(stateData[2]==selectedCostOfLivingValue) {
                rank+=0.25
            }
            if(stateData[3]==selectedSalaryValue) {
                rank+=0.25
            }
            if(highestRank<rank) {
                highestRank=rank
                states.removeAll()
            }
            if(highestRank==rank && highestRank != 0.00) {
                states.append(x)
            }
        }
        for state in states {
            self.stateResultLabel.text = "Based on your preferences, we recommend you make this state your new home 😀: " + state
            self.weatherLabel.text = "Weather: " + (stateDictionary[state]?[0])!
            self.rentLabel.text = "Average Monthly Rent: " + (stateDictionary[state]?[1])!
            self.costOfLivingLabel.text="Cost of Living Index: " + (stateDictionary[state]?[2])!
            self.salaryLabel.text="Average Yearly Salary: " + (stateDictionary[state]?[3])!
        }
        self.mainView.bringSubviewToFront(stateResultLabel)
    }
}
