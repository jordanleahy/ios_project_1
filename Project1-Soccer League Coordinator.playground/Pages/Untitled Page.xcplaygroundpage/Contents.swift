//// Project 1: Soccer League Coordinator
// Jordan Leahy 5/15/2018

//Each player is represented by a Dictionary with String keys and the corresponding values

let player1: [String: Any] = [
    "name": "Joe Smith",
    "height": 42,
    "hasExperience": true,
    "guardians": "Jime and Jan Smith"
]

let player2: [String: Any] = [
    "name": "Jill Tanner",
    "height": 36,
    "hasExperience": true,
    "guardians": "Clara Tanner"
]
let player3: [String: Any] = [
    "name": "Bill Bon",
    "height": 43,
    "hasExperience": true,
    "guardians": "Sara and Jenny Bon"
]

let player4: [String: Any] = [
    "name": "Eva Gordon",
    "height": 45,
    "hasExperience": false,
    "guardians": "Wendy and Mike Gordon"
]

let player5: [String: Any] = [
    "name": "Matt Gill",
    "height": 40,
    "hasExperience": false,
    "guardians": "Charles and Sylvia Gill"
]

let player6: [String: Any] = [
    "name": "Kimmy Stein",
    "height": 41,
    "hasExperience": false,
    "guardians": "Bill and Hillary Stein"
]

let player7: [String: Any] = [
    "name": "Sammy Adams",
    "height": 45,
    "hasExperience": false,
    "guardians": "Jeff Adams"
]

let player8: [String: Any] = [
    "name": "Karl Saygan",
    "height": 42,
    "hasExperience": true,
    "guardians": "Heather Bledsoe"
]

let player9: [String: Any] = [
    "name": "Suzane Greenberg",
    "height": 44,
    "hasExperience": true,
    "guardians": "Henrietta Dumas"
]

let player10: [String: Any] = [
    "name": "Sal Dali",
    "height": 41,
    "hasExperience": false,
    "guardians": "Gala Dali"
]

let player11: [String: Any] = [
    "name": "Joe Kavalier",
    "height": 39,
    "hasExperience": false,
    "guardians": "Sam and Elaine Kavalier"
]

let player12: [String: Any] = [
    "name": "Ben Finkelstein",
    "height": 44,
    "hasExperience": false,
    "guardians": "Aaron and Jill Finkelstein"
]

let player13: [String: Any] = [
    "name": "Diego Soto",
    "height": 41,
    "hasExperience": true,
    "guardians": "Robin and Sarika Soto"
]

let player14: [String: Any] = [
    "name": "Chloe Alaska",
    "height": 47,
    "hasExperience": false,
    "guardians": "David and Jamie Alaska"
]

let player15: [String: Any] = [
    "name": "Arnold Willis",
    "height": 43,
    "hasExperience": false,
    "guardians": "Claire Willis"
]

let player16: [String: Any] = [
    "name": "Phillip Helm",
    "height": 44,
    "hasExperience": true,
    "guardians": "Thomas Helm and Eva Jones"
]

let player17: [String: Any] = [
    "name": "Les Clay",
    "height": 42,
    "hasExperience": true,
    "guardians": "Wynonna Brown"
]

let player18: [String: Any] = [
    "name": "Herschel Krustofski",
    "height": 45,
    "hasExperience": true,
    "guardians": "Hyman and Rachel Krustofski"
]



// A single collection named 'players' that contains all information for all 18 players is created.
// Notes: [[String:Any]] indicates that this an array of dictionaries.
var players: [[String: Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


//Create collections with variables named 'teamSharks', 'teamDragons', and 'teamRaptors
var teamSharks: [[String: Any]]  = []
var teamDragons: [[String: Any]]  = []
var teamRaptors: [[String: Any]]  = []


// Create experienced and inExerienced players empty collections
var experiencedPlayers: [[String: Any]]  = []
var inExperiencedPlayers: [[String: Any]]  = []

// Divide experienced and inexperienced players and assign them to empty appropriate variable
for player in players {
    // typecasted "hasExperience" value to a Bool
    if let hasExperience = player["hasExperience"] as? Bool {
        if hasExperience == true {
            experiencedPlayers.append(player)
        } else {
            inExperiencedPlayers.append(player)
        }
    }
}

// Bundle all teams into one variable named teams.
var totalPlayers = players.count
var teams = [teamSharks, teamDragons, teamRaptors]
var totalTeams = (teams.count)
var totalPlayersPerTeam = (players.count / totalTeams)
var totalExperiencedPlayers = (experiencedPlayers.count)
var totalInExperiencedPlayers = (inExperiencedPlayers.count)

var maxExperiencedPlayersPerTeam = (totalExperiencedPlayers / totalTeams)
var maxInExperiencedPlayersPerTeam = (totalInExperiencedPlayers / totalTeams)


// Run For loop in experiencedTeams to populate evenly individual teams
for experiencedPlayer in experiencedPlayers {
    if teamSharks.count < maxExperiencedPlayersPerTeam {
        teamSharks.append(experiencedPlayer)
    } else if teamRaptors.count < maxExperiencedPlayersPerTeam {
        teamRaptors.append(experiencedPlayer)
    } else {
        teamDragons.append(experiencedPlayer)
    }
}

// Run For loop in experiencedTeams to populate evenly individual teams
for inExperiencedPlayer in inExperiencedPlayers {
    if teamSharks.count < totalPlayersPerTeam {
        teamSharks.append(inExperiencedPlayer)
    } else if teamRaptors.count < totalPlayersPerTeam {
        teamRaptors.append(inExperiencedPlayer)
    } else {
        teamDragons.append(inExperiencedPlayer)
    }
}

// Write code that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team the child has been placed on and when they should attend their first team team practice.

//Create collection of letters
var letters = [String] ()

// Create vars for each teams practice date
var dragonsPractice = "March 17, 1pm"
var sharksPractice = "March 17, 3pm"
var raptorsPractice = "March 18, 1pm"

print(teamSharks.count)
print(teamDragons.count)

for player in teamSharks {
    // when accessing an dictionary in an array, in order to copy it's key values, we need to create const for each key/value we want to pull.  Then use that const in the return
    if  let guardian = player["guardians"], let name = player["name"] {
        let letter: String = "Dear \(guardian), \(name) is on team Sharks and there first game is on \(sharksPractice)."
        letters.append(letter)
    }
}

for player in teamDragons {
    // when accessing an dictionary in an array, in order to copy it's key values, we need to create const for each key/value we want to pull.  Then use that const in the return
    if let guardian = player["guardians"], let name = player["name"] {
        let letter: String = "Dear \(guardian), \(name) is on team Sharks and there first game is on \(dragonsPractice)."
        letters.append(letter)
    }
}

for player in teamRaptors {
    // when accessing an dictionary in an array, in order to copy it's key values, we need to create const for each key/value we want to pull.  Then use that const in the return
    if let guardian = player["guardians"], let name = player["name"] {
        let letter: String = "Dear \(guardian), \(name) is on team Sharks and there first game is on \(raptorsPractice)."
        letters.append(letter)
    }
}

print(letters)




