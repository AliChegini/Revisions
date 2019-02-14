// Part 1
// Collection which has key strings and array values to hold all players data
// Data structure [String : [String : Any]]
let players = [
    "Joe Smith": ["height": 42.0 ,"hasExperience": true ,"guardianName": "Jim and Jan Smith"],
    "Jill Tanner": ["height": 36.0 ,"hasExperience": true ,"guardianName": "Clara Tanner"],
    "Bill Bon": ["height": 43.0 ,"hasExperience": true ,"guardianName": "Sara and Jenny Bon"],
    "Eva Gordon": ["height": 45.0 ,"hasExperience": false ,"guardianName": "Wendy and Mike Gordon"],
    "Matt Gill": ["height": 40.0,"hasExperience": false ,"guardianName": "Charles and Sylvia Gill"],
    "Kimmy Stein": ["height": 41.0,"hasExperience": false ,"guardianName": "Bill and Hillary Stein"],
    "Sammy Adams": ["height": 45.0 ,"hasExperience": false ,"guardianName": "Jeff Adams"],
    "Karl Saygan": ["height": 42.0 ,"hasExperience": true ,"guardianName": "Heather Bledsoe"],
    "Suzane Greenberg": ["height": 44.0 ,"hasExperience": true ,"guardianName": "Henrietta Dumas"],
    "Sal Dali": ["height": 41.0 ,"hasExperience": false ,"guardianName": "Gala Dali"],
    "Joe Kavalier": ["height": 39.0 ,"hasExperience": false ,"guardianName": "Sam and Elaine Kavalier"],
    "Ben Finkelstein": ["height": 44.0 ,"hasExperience":false ,"guardianName": "Aaron and Jill Finkelstein"],
    "Diego Soto": ["height": 41.0 ,"hasExperience": true ,"guardianName": "Robin and Sarika Soto"],
    "Chloe Alaska": ["height": 47.0 ,"hasExperience": false ,"guardianName": "David and Jamie Alaska"],
    "Arnold Willis": ["height": 43.0 ,"hasExperience": false ,"guardianName": "Claire Willis"],
    "Phillip Helm": ["height": 44.0 ,"hasExperience": true ,"guardianName": "Thomas Helm and Eva Jones"],
    "Les Clay": ["height": 42.0 ,"hasExperience": true ,"guardianName": "Wynonna Brown"],
    "Herschel Krustofski": ["height": 45.0 ,"hasExperience": true ,"guardianName": "Hyman and Rachel Krustofski"]
]


let teams = ["teamSharks", "teamDragons", "teamRaptors"]
var experienced: [String : [String : Any]] = [:]
var nonExperienced: [String : [String : Any]] = [:]
var teamSharks: [String : [String : Any]] = [:]
var teamDragons: [String : [String : Any]] = [:]
var teamRaptors: [String : [String : Any]] = [:]
var letters: [String] = []

// separating experienced players
func separateExperienced() {
    for (key, value) in players {
        if value["hasExperience"] as! Bool == true {
            experienced[key] = value
        } else {
            nonExperienced[key] = value
        }
    }
}


// dividing experienced equally between teams
func divideExperienced() {
    for player in experienced {
        if teamSharks.count < (experienced.count / teams.count) {
            teamSharks[player.key] = player.value
        } else if teamDragons.count < (experienced.count / teams.count) {
            teamDragons[player.key] = player.value
        } else if teamRaptors.count < (experienced.count / teams.count) {
            teamRaptors[player.key] = player.value
        }
    }
}



// dividing non experienced equally
func divideNonExperienced() {
    for player in nonExperienced {
        if teamSharks.count < (players.count / teams.count) {
            teamSharks[player.key] = player.value
        } else if teamDragons.count < (players.count / teams.count) {
            teamDragons[player.key] = player.value
        } else if teamRaptors.count < (players.count / teams.count) {
            teamRaptors[player.key] = player.value
        }
    }
}



// Generate personalized letter(mail)
func generateLetter() {
    for (key, value) in teamSharks {
        letters += ["Dear \(value["guardianName"] ?? ""), your child \(key), is in Team Sharks, practicing on March 17, 3pm"]
    }
    for (key, value) in teamDragons {
        letters += ["Dear \(value["guardianName"] ?? ""), your child \(key), is in Team Dragons, practicing on March 17, 1pm"]
    }
    for (key, value) in teamRaptors {
        letters += ["Dear \(value["guardianName"] ?? ""), your child \(key), is in Team Raptors, practicing on March 18, 1pm"]
    }
}

// Function to print the letters
func printLetters() {
    for letter in letters {
        print(letter)
    }
}



// Main function to run the program
func runTheProgram(){
    separateExperienced()
    divideExperienced()
    divideNonExperienced()
    generateLetter()
    printLetters()
    print("-------------")
}


runTheProgram()


