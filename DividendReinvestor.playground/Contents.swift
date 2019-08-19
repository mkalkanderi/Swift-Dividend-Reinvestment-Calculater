import UIKit

// Dividend reinvestment(+montlhy dopisits) calculater.
/*-----------------------------------------------*/

// intitial constants required to simulater
let stockPrice = 27
let monthlyDiv = 0.109

//initial investment cost
var costOfPosition = 3000

//how much stocks you'll get
var stocksOwned = costOfPosition/stockPrice

//additional deposit to be invested along with the dividends
var monthlyDeposit = 150.0
var totalMonthlyDeposit = 0.0
var newMonthlyStocks = 0

//how much dividend you'll be getting
var divOnPosition = Double(stocksOwned)*monthlyDiv

// loop through months. range in months.
for i in 1...12 {
    divOnPosition = Double(stocksOwned)*monthlyDiv
    totalMonthlyDeposit = monthlyDeposit+divOnPosition
    newMonthlyStocks = Int(totalMonthlyDeposit)/stockPrice
    stocksOwned = stocksOwned+newMonthlyStocks
    costOfPosition = stocksOwned*stockPrice
    
    print("__________month \(i)__________\n")
    print("Stocks Owned: \(stocksOwned)")
    print("Monthy Div: \(divOnPosition)")
    print("Position Value: \(costOfPosition)\n\n\n")
}



