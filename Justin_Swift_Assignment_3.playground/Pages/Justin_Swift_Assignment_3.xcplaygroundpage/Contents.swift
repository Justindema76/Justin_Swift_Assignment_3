//Create a super class named Ship
class Ship { //Superclass
    var name: String
    var year: Int
    var countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
   
}

// define subclss called cruisehip
class CruiseShip: Ship {
    var maxCapacity: Int
    var oceanOfOperation: String
    var currentPassengerCount: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String, currentPassengerCount: Int) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = currentPassengerCount
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    //add a method to add a passenger if the ship is not at max capacity
    
    func addPassenger(){
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1 // adding a new passenger
            print("1 passenger has boarded the \(name)")
        } else {
            print("Sorry the \(name) is at max Capacity")
        }
    }
    // add a method to print the current passenger count
    // this is the method to print the current passenger count
    func printPassengerCount() {
        print("Current passenger count: \(currentPassengerCount) passengers on the \(name)")
      
    }
}

//  cargoship subclass
//    add a method to add cargo if the ship is not at max capacity
//    add a method to print the current cargo count
class CargoShip: Ship {
    var maxCargoCapacity: Int
    var currentCargoCount: Int
    var isInternational: Bool
        
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, currentCargoCount: Int, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = currentCargoCount
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
        }
    func addCargo(){
        if currentCargoCount < maxCargoCapacity {
            currentCargoCount += 1 // adding a new passenger
            print("1 piece of cargo was added to \(name)")
        } else {
            print("Sorry the \(name) is at max Capacity")
        }
    }
    // add a method to print the current cargo count
    // this is the method to print the current cargo count
    func printCargoCount() {
        print("Current cargo count: \(currentCargoCount) pounds on the \(name)")
        
        }
    }
    // add a subclass of Pirateship
class PirateShip: Ship{
    var maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCanons: Int
        
    init(name: String, year: Int, countryOfOrigin: String,maxTreasureCapacity: Int, currentTreasureCount: Int, numberOfCanons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.currentTreasureCount = currentTreasureCount
        self.numberOfCanons = numberOfCanons
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
            }
    func addTreasure(){
        if currentTreasureCount < maxTreasureCapacity {
            currentTreasureCount += 1 // adding a new passenger
            print("1 gold bar was added to \(name)")
        } else {
            print("Sorry the \(name) is filled with gold")
        }
    }
//        add a method to add treasure if the ship is not at max capacity
//        add a method to print the current treasure count
    func printTreasureCount() {
            print("Current treasure count: \(currentTreasureCount) pounds of gold on the \(name)")
        }
    }
    
//-------------------
//Create an instance of 1 of the subclasses and using print statements, demonstrate the use of ALL the properties and methods of that class as well as the superclass 🛠 you can do this anyway you like, but all props and methods must be demonstrated 👍

//Printing the methods  on Cruiseship
let cruiseShip = CruiseShip(name: "Disney Cruise Lines", year: 2024, countryOfOrigin: "USA", maxCapacity: 4000, oceanOfOperation: "Atlantic & Pacific", currentPassengerCount: 1500)

print("CruiseShip")
print("Ship Name: \(cruiseShip.name)")
print("Year: \(cruiseShip.year)")
print("Country of Origin: \(cruiseShip.countryOfOrigin)")
print("Max Passenger Capacity: \(cruiseShip.maxCapacity) passengers")
print("Ocean of Operation: \(cruiseShip.oceanOfOperation)")
cruiseShip.printPassengerCount()
cruiseShip.addPassenger()
cruiseShip.printPassengerCount()

print("")

//--------------------

//Printing the methods Cargoship
let cargoShip = CargoShip(name: "Millennium Falcon", year: 3972, countryOfOrigin: "The Planet of Corellia", maxCargoCapacity: 5000, currentCargoCount: 1577, isInternational: true)

print("CargoShip")
print("Ship Name: \(cargoShip.name)")
print("Year: \(cargoShip.year)")
print("Origin: \(cargoShip.countryOfOrigin)")
print("Max Capacity: \(cargoShip.maxCargoCapacity) pounds")
print("Internationl Travel: \(cargoShip.isInternational)")
cargoShip.printCargoCount()
cargoShip.addCargo()
cargoShip.printCargoCount()

print("")

//----------------

//Printing the methods of Pirateship
let pirateShip = PirateShip(name: "The BlackPearl", year: 1872, countryOfOrigin: "Unknow", maxTreasureCapacity: 1500, currentTreasureCount: 1255, numberOfCanons: 20)
print("PirateShip")
print("Ship Name: \(pirateShip.name)")
print("Year: \(pirateShip.year)")
print("Origin: \(pirateShip.countryOfOrigin)")
print("Max Capacity: \(pirateShip.maxTreasureCapacity) pounds")
print("Number of Canons: \(pirateShip.numberOfCanons)")
pirateShip.printTreasureCount()
pirateShip.addTreasure()
pirateShip.printTreasureCount()
