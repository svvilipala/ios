//
//  Movies.swift
//  Vilipala_MovieApp
//
//  Created by Sri Vidya Vilipala on 4/25/25.
//

import Foundation

struct Movies {
    var genre : String
    var list_Array : [MovieList]
}

struct MovieList {
    var movieName : String
    var movieImage : String
    var movieInfo : String
}

let genre1 = Movies(genre: "Action",
                    list_Array: [
                        MovieList(movieName: "Mad Max", movieImage: "madmax", movieInfo: "In a self-destructing world, a vengeful Australian policeman sets out to stop a violent motorcycle gang."),
                        MovieList(movieName: "RRR", movieImage: "rrr", movieInfo: "A fearless warrior on a perilous mission comes face to face with a steely cop serving British forces in this epic saga set in pre-independent India."),
                        MovieList(movieName: "Baahubali", movieImage: "baahubali", movieInfo: "A child from the Mahishmati kingdom is raised by tribal people and one day learns about his royal heritage, his father's bravery in battle and a mission to overthrow the incumbent ruler."),
                        MovieList(movieName: "Pushpa", movieImage: "pushpa", movieInfo: "A smuggling kingpin faces off against a vengeful rival while manipulating politics, making big deals, and navigating tense confrontations. A public apology leads to a dramatic showdown, ending with challenge."),
                        MovieList(movieName: "Akhanda", movieImage: "akhanda", movieInfo: "When the nefarious Varadarajulu plans to attack Murali Krishna, an ardent devotee of Lord Shiva, Akhanda leaves no stone unturned to defeat the evil.")
                        ])

let genre2 = Movies(genre: "Drama",
                    list_Array: [
                        MovieList(movieName: "Arjun Reddy", movieImage: "arjunreddy", movieInfo: "Arjun Reddy, a short-tempered house surgeon, gets used to drugs and drinks when his girlfriend is forced to marry another person."),
                        MovieList(movieName: "Mahanati", movieImage: "mahanati", movieInfo: "Biography of Savitri, an actress from South India movie industry, who ruled the industry for two decades during 50s and 60s."),
                        MovieList(movieName: "Leader", movieImage: "leader", movieInfo: "A well educated idealist, who is a son of Political leader in power wants to correct the rigged political system of favors and corruption. However, this soon becomes a game of power. How would he navigate through the strategies and achieve progress."),
                        MovieList(movieName: "Hi Nanna", movieImage: "hinanna", movieInfo: "A single father begins to narrate the story of the missing mother to his child and nothing remains the same."),
                        MovieList(movieName: "Sreekaram", movieImage: "sreekaram", movieInfo: "A young IT professional abandons his city career to revive farming in his village near Tirupati. As he strives to transform agriculture, a devoted colleague pursues his heart, while he pursues his dream of empowering farmers.")
                    ])
let genre3 = Movies(genre: "Comedy",
                    list_Array: [
                        MovieList(movieName: "Kuch Kuch Hota Hai", movieImage: "kuchkuchhota", movieInfo: "A hilarious mix of love, friendship, and family."),
                        MovieList(movieName: "3 Idiots", movieImage: "3idiots", movieInfo: "A story abput three engineering students navigating life, friendship, and learning."),
                        MovieList(movieName: "F2: Fun and Frustation", movieImage: "f2", movieInfo: "After Venky, Varun also gets married thinking he can keep the wife in control but both of them get frustrated with the marital life which generates fun."),
                        MovieList(movieName: "Evadi Gola Vaadidhi", movieImage: "evadigolavaadidhi", movieInfo: "A lot of hilarious sequences happen when Veera Shankar runs away to Bangkok inorder to escape his marriage."),
                        MovieList(movieName: "Jathi Ratnalu", movieImage: "jathiratnalu", movieInfo: "Three chappy-go-lucky men who arrive in the city for a better life but land up in jail for a crime they didn't commit.")
                        ])
let genre4 = Movies(genre: "Thriller",
                    list_Array: [
                        MovieList(movieName: "Rekhachithram", movieImage: "rekhachithram", movieInfo: "Suspended cop vivek rejoins after gambling scandal. Tasked with sloving 40 years old murder case with faceless victim, he seeks redeption by cracking the long unsloved mystery."),
                        MovieList(movieName: "Thandel", movieImage: "thandel", movieInfo: "An action drama about a fisherman in Srikakulam who gets caught by the Pakistan forces in international waters."),
                        MovieList(movieName: "Hit", movieImage: "hit", movieInfo: "An officer of the 'Homicide Intervention Team' who frequently suffers from having his panic attacks does everything in his power to rescue a woman who went missing."),
                        MovieList(movieName: "Saripodhaa Sanivaaram", movieImage: "saripodhaasanivarram", movieInfo: "In order to defend the innocent from a corrupt and brutal cop, a vigilante hero must work around his own self-imposed code of honor."),
                        MovieList(movieName: "Sabdham", movieImage: "sabdham", movieInfo: "A paranormal investigator is employed by a university to look into a series of mysterious deaths that some are attributing to supernatural causes.")
                    ])

var genres = [genre1, genre2, genre3, genre4]


