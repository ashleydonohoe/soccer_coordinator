//: Playground - noun: a place where people can play

import UIKit

// Create dictionary for each player

let joeSmith = ["name": "Joe Smith", "height": 42, "experienced": true, "parents": "Jim and Jan Smith"]
let jill = ["name": "Jill Tanner", "height": 36, "experienced": true, "parents": "Clara Tanner"]
let bill = ["name": "Bill Bon", "height": 43, "experienced": true, "parents": "Sara and Jenny Bon"]
let eva = ["name": "Eva Gordon", "height": 45, "experienced": false, "parents": "Wendy and Mike Gordon"]
let matt = ["name": "Matt Gill", "height": 40, "experienced": false, "parents": "Charles and Sylvia Gill"]
let kimmy = ["name": "Kimmy Stein", "height": 41, "experienced": false, "parents": "Bill and Hillary Stein"]
let sammy = ["name": "Sammy Adams", "height": 45, "experienced": false, "parents": "Jeff Adams"]
let karl = ["name": "Karl Saygan", "height": 42, "experienced": true, "parents": "Health Bledsoe"]
let suzane = ["name": "Suzane Greenberg", "height": 44, "experienced": true, "parents": "Henrietta Dumas"]
let sal = ["name": "Sal Dali", "height": 41, "experienced": false, "parents": "Gala Dali"]
let joeK = ["name": "Joe Kavalier", "height": 39, "experienced": false, "parents": "Sam and Elaine Kavalier"]
let ben = ["name": "Ben Finkelstein", "height": 44, "experienced": false, "parents": "Aaron and Jill Finkelstein"]
let diego = ["name": "Diego Soto", "height": 41, "experienced": true, "parents": "Robin and Sarika Soto"]
let chloe = ["name": "Chloe Alaska", "height": 47, "experienced": false, "parents": "David and Jamie Alaska"]
let arnold = ["name": "Arnold Willis", "height": 43, "experienced": false, "parents": "Claire Willis"]
let phillip = ["name": "Phillip Helm", "height": 44, "experienced": true, "parents": "Thomas Helm and Eva Jones"]
let les = ["name": "Les Clay", "height": 42, "experienced": true, "parents": "Wynonna Brown"]
let herschel = ["name": "Herschel Krustofski", "height": 45, "experienced": true, "parents": "Hyman and Rachel Krustofski"]

// Create collection of all players

let allPlayers = [joeSmith, jill, bill, eva, matt, kimmy, sammy, karl, suzane, sal, joeK, ben, diego, chloe, arnold, phillip, les, herschel]

// Number of teams needed
let numberOfTeams = 3

// Set variable for number of players per team
let numberOfPlayersPerTeam = allPlayers.count/3

// Put all experienced players in an array

var experiencedPlayers = [AnyObject]()

// Put all inexperienced players in an array
var inexperiencedPlayers = [AnyObject]()

joeSmith["experienced"]

for player in allPlayers {
    if player["experienced"] == true {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

// Create arrays for each of three teams

var dragons = [AnyObject]()
var sharks = [AnyObject]()
var raptors = [AnyObject]()

// Loop through players, putting 1/3 in each team with 1/3 experi   enced players and 2/3 inexperienced players
for player in experiencedPlayers {
    // need 1/3 of # of players experienced players per team
    if dragons.count < experiencedPlayers.count/numberOfTeams {
        dragons.append(player)
    } else if sharks.count < experiencedPlayers.count/numberOfTeams {
        sharks.append(player)
    } else {
        raptors.append(player)
    }
}

for player in inexperiencedPlayers {
    if dragons.count < numberOfPlayersPerTeam {
        dragons.append(player)
    } else if sharks.count < numberOfPlayersPerTeam {
        sharks.append(player)
    } else {
        raptors.append(player)
    }
}

// Loop through each team and print custom letter
for player in dragons {
    print("Dear \(player["parents"]), Your child \(player["name"]) has been placed on the Dragons team and will have his or her team practice on March 17th at 1PM. We look forward to a fun season! Sincerely, Team Organizer")
}

for player in sharks {
    print("Dear \(player["parents"]), Your child \(player["name"]) has been placed on the Sharks team and will have his or her team practice on March 17th at 3PM. We look forward to a fun season! Sincerely, Team Organizer")
}

for player in dragons {
    print("Dear \(player["parents"]), Your child \(player["name"]) has been placed on the Raptors team and will have his or her team practice on March 18th at 1PM. We look forward to a fun season! Sincerely, Team Organizer")
}
