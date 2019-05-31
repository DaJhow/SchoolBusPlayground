/*: 
⬇️ *Vous pouvez ignorez le code ci-dessous, il nous permet juste d'initialiser et de visualiser le canvas à droite.*
 */
import PlaygroundSupport
let canvas = Canvas()
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = canvas

//

class Bus {
    var driverName: String
    var seats: Int = 20
    var seatsOccupied: Int = 0
    let wheels = 4
    
    init(driverName: String) {
        self.driverName = driverName    // self.driverName = Propriété // driverName = parametre
    }
    
    func moveForward() {
        canvas.moveBusForward()
    }
    
    func stop() {
        canvas.stopBus()
    }
    
    func drive(road: Road) {
        for _ in road.sections {
            moveForward()
        }
    }
}

class Road {
    var sections = [RoadSection]()
    init(length: Int) {
        for _ in 0..<length {
            self.sections.append(RoadSection())
        }
    }
}

class RoadSection {
    init(){
        canvas.createRoadSection()
    }
}

var unBus = Bus(driverName: "Joe")
var road = Road(length: 20)
unBus.drive(road: road)
