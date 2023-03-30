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
    case vivaldi = "Vivaldi"
    case betkoven = "Betkhoven"
    
}

enum Country: String {
    case british = "Great Britan"
    case usa = "USA"
    case russia = "Russia"
    case finland = "Finland"
    case germany = "Germany"
    case italy = "Italy"
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
var track5 = Track(name: "Summer", artist: .vivaldi, country: .italy, time: 7.12, numberTrack: Track.number)
var track6 = Track(name: "Star", artist: .adele, country: .usa, time: 3.55, numberTrack: Track.number)
var track7 = Track(name: "Simphoni #17", artist: .betkoven, country: .germany, time: 8.32, numberTrack: Track.number)


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
        if numbers == 1 {
            print("Track \"\(track.name)\" add in category \"\(name)\". Now in category \(numbers) track.")
        } else { print("Track \"\(track.name)\" add in category \"\(name)\". Now in category \(numbers) tracks.") }
    }
    
    func deleteTrack (track:Track) {
        list.removeAll(where: {$0.name == track.name})
        if numbers == 1 {
            print("Track \"\(track.name)\" delete from category \"\(name)\". Now in category \(numbers) track.")
        }    else {print("Track \"\(track.name)\" delete from category \"\(name)\". Now in category \(numbers) tracks.")}
    }
}


var rock = Category(name: "Rock" )

rock.addTrack(track: track)
rock.addTrack(track: track2)
rock.addTrack(track: track4)
rock.deleteTrack(track: track4)


// Task 2

var pop = Category(name: "Pop")

pop.addTrack(track: track3)
pop.deleteTrack(track: track4)
pop.addTrack(track: track6)

var classic = Category(name: "Classic")
classic.addTrack(track: track7)
classic.addTrack(track: track5)


class Library {
    var name: String
    var numbers:Int {
        return listCat.count
    }
    
    lazy var listCat: [Category] = []
    
    init (name:String) {
        self.name = name
        
    }
    
    func addLibrary(category:Category) {
        listCat.append(category)
        if numbers == 1 {
            print("Category` \"\(category.name)\" add in library \"\(name)\". Now in library \(numbers) category.")
        } else { print("Category \"\(category.name)\" add in library \"\(name)\". Now in library \(numbers) categorys.") }
    }
    
    func deleteLibrary(category:Category) {
        listCat.removeAll(where: {$0.name == category.name})
        if numbers == 1 {
            print("Category` \"\(category.name)\" add in library \"\(name)\". Now in library \(numbers) category.")
        } else { print("Category \"\(category.name)\" add in library \"\(name)\". Now in library \(numbers) categorys.") }
    }
}
var libraryForSoul = Library(name: "For soul" )
libraryForSoul.addLibrary(category: classic)
libraryForSoul.addLibrary(category: pop)

var libraryForTranning = Library(name: "For tranning")
libraryForTranning.addLibrary(category: rock)


