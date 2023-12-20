//
//  ViewController.swift
//  BMI
//
//  Created by Lucy Zhang on 11/20/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var riskLabel: UILabel!
    
    var links = [String]()
    
    struct BmiResponse: Codable {
        let bmi: Double
        let more: [String]
        let risk: String
    }

    
    @IBAction func callBmiApiButtonTapped(_ sender: Any) {
        guard let height = heightTextField.text, let weight = weightTextField.text else {
            return
        }
        fetchBmiData(height: height, weight: weight)
    }

    @IBAction func educateMeButtonTapped(_ sender: UIButton) {
        if !links.isEmpty {
                if let url = URL(string: links.randomElement() ?? "") { // Randomly selects one link from the array
                    UIApplication.shared.open(url)
                }
            } else {
                riskLabel.text = "BMI not calculated"
            }
        }

    private func fetchBmiData(height: String, weight: String) {
        let urlString = "http://webstrar99.fulton.asu.edu/page4/Service1.svc/calculateBMI?height=\(height)&weight=\(weight)"
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error: \(error)")
                return
            }

            guard let data = data else { return }

            do {
                let bmiData = try JSONDecoder().decode(BmiResponse.self, from: data)
                DispatchQueue.main.async {
                    self.updateUI(with: bmiData)
                    self.links = bmiData.more
                }
            } catch {
                print("Error: \(error)")
            }
        }.resume()
    }

    private func updateUI(with bmiData: BmiResponse) {
        bmiLabel.text = String(format:"%.2f",bmiData.bmi)
        riskLabel.text = bmiData.risk

        // Update risk label color based on BMI value
        let bmiValue = bmiData.bmi
        switch bmiValue {
        case ..<18:
            riskLabel.textColor = .blue
        case 18..<25:
            riskLabel.textColor = .green
        case 25..<30:
            riskLabel.textColor = .purple
        default:
            riskLabel.textColor = .red
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}




