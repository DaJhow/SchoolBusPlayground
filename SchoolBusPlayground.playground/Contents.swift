/*: 
⬇️ *Vous pouvez ignorez le code ci-dessous, il nous permet juste d'initialiser et de visualiser le canvas à droite.*
 */
import PlaygroundSupport
let canvas = Canvas()
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = canvas

/*:
 - - -
 # Découverte du canevas
 Le canevas, c'est l'étendue de pelouse verte qui se trouve sur la droite 🌿.
 Sur ce canevas, nous allons pouvoir dessiner notre route. Et nous allons faire cela en utilisant les fonctions proposées par le canevas :
 ## Route

 `canvas.createRoadSection()`
 - 🛣 Cette fonction permet de **créer une section de route**. A chaque appel de cette fonction, une nouvelle section de route est crée.

 `canvas.createHomeRoadSection()`
 - 🛣🏠 Similaire à la précédente, cette fonction permet de créer une section de route **qui contient une maison**.

 `canvas.createSchoolRoadSection()`
 - 🛣🏫 Similaire à la précédente, cette fonction permet de créer une section de route **qui contient une école**.

 ## Bus
 `canvas.moveBusForward()`

 - 🚌➡️ Cette fonction permet de faire avancer le bus jusqu'à la section de route suivante. Attention, le bus ne peut pas avancer s'il n'y a plus de route devant lui.

 `canvas.stopBus()`
 - 🚌🛑 Cette fonction permet de faire marquer un arrêt au bus.

 ## A vous de jouer !
 */
for i in 0...60 {
    canvas.createRoadSection()
    if i < 28 {
        canvas.moveBusForward()
    }
    if i == 3 || i == 5 || i == 6 || i == 12 || i == 16 || i == 24 {
        canvas.createHomeRoadSection()
        canvas.stopBus()
    }
    if i == 27 {
        canvas.createSchoolRoadSection()
        canvas.stopBus()
    }
}

class Bus {
    var drivername: String = "Joe"
    var seats: Int = 20
    var seatsOccupied: Int = 0
    let wheels = 4
}

class Road {
    var sections = [RoadSection]()
}

class RoadSection {
    
}

var unBus = Bus()
print(unBus.drivername)
