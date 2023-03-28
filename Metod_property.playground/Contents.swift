import UIKit

var greeting = "Hello, playground"

enum ListArtist: String {
    case halloween = "Halloween"
    case iron = "Iron Maiden"
    case black = "Black Sabath"
    case blian = "Blian Guardion"
    case jakson = "Mike Jakson"
    case adele = "Adele"
    case kino = "Kino"
}

enum Country: String {
    case british = "Great Britan"
    case usa = "USA"
    case russia = "Russia"
    case finland = "Finland"
    case germany = "Germany"
}

struct Track {
    var name: String
    var artist: ListArtist
    var country: Country
    var time: Double
    static var number: Int = 1
    var numberTrack: Int
    
    init(name: String, artist: ListArtist, country: Country, time: Double, numberTrack: Int) {
        self.name = name
        self.artist = artist
        self.country = country
        self.time = time
        Track.number += 1
        self.numberTrack = numberTrack
    }
}

var track = Track(name: "Fear of the dark", artist: .iron, country: .british, time: 4.12, numberTrack: Track.number)
var track2 = Track(name: "Halloween", artist: .halloween, country: .germany, time: 5.20, numberTrack: Track.number)
var track3 = Track(name: "Moon", artist: .jakson, country: .usa, time: 3.32, numberTrack: Track.number)
var track4 = Track(name: "Star name Sun", artist: .kino, country: .russia, time: 4.12, numberTrack: Track.number)



class Category {
    var name: String
    var numbers: Int {
        return list.count
    }
    lazy var list: [Track] = []
    
    init (name: String) {
        self.name = name
    }
    
    func addTrack (track:Track) {
        list.append(track)
        print("Track \"\(track.name)\" add in category \(name). Now in category \(numbers) track.")
    }
    
    func deleteTrack (track:Track) {
        list.removeAll(where: {$0.name == track.name})
        print("Track \"\(track.name)\" delete from category \(name). Now in category \(numbers) track.")
    }
}


var rock = Category(name: "Rock" )

rock.addTrack(track: track)
rock.addTrack(track: track2)
rock.addTrack(track: track4)

var pop = Category(name: "Pop")

pop.addTrack(track: track3)

rock.deleteTrack(track: track4)
pop.deleteTrack(track: track4)
