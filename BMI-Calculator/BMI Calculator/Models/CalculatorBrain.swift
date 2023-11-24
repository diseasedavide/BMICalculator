import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
      //  bmi = BMI(value: bmiValue, advice: String, color: UIColor)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more tasty snacks", color: UIColor.cyan)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You're in good shape, keep it up!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less, train more!", color: UIColor.red)
            
        }
    }
    
    func getBMIValue() -> String {
        let bmi1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1Decimal
    }
     
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
