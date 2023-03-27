import UIKit

var greeting = "Hello, playground"

enum List: String {
    case halloween = "Halloween"
    case iron = "Iron Maiden"
    case black = "Black Sabath"
    case blian = "Blian Guardion"
}

enum Country: String {
    case british = "Great Britan"
    case usa = "USA"
    case russia = "Russia"
    case finland = "Finland"
    case germany = "Germany"
}

class Track {
    var name: String
    var artist: String
    var country: Country
    var time: Double
    
    init(name: String, artist: String, country: Country, time: Double) {
        self.name = name
        self.artist = artist
        self.country = country
        self.time = time
    }
}


class Category {
    var name: String
    lazy var numbers: Int
    var list: Track
    
    init (name: String, numbers: Int, list: Track) {
        self.name = name
        self.numbers = numbers
        self.list = list
    }
    
    func addTrack () {
        
    }
    
    func deleteTrack () {
        
    }
}


var category = Category(name: "Rock", numbers: <#T##Int#>, list: <#T##Track#>)
