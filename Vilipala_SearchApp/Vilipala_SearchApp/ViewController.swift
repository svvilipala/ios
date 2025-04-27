//
//  ViewController.swift
//  Vilipala_SearchApp
//
//  Created by Sri Vidya Vilipala on 3/25/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var ShowPrevImageBtn: UIButton!
    
    @IBOutlet weak var ShowNextImageBtn: UIButton!
    
    @IBOutlet weak var ResetBtn: UIButton!
    
    @IBOutlet weak var searchButtonAction: UIButton!
    var arr = [["FruitBowl", "StarFruit", "Berry"],["VermilionCliffsNationalMonument", "Vrindhavan", "gatebridge"],["SolarSystem", "star", "Rocket"],["PolarBeer", "Panda", "Eagle"],["Telephone", "lightbulb", "car"]]
    
    var fruitKeywords = ["fruit", "banana", "apple", "orange", "grape"]
    var landmarkKeywords = ["monument", "cliff", "gate", "buliding", "bridge"]
    var solarsystemKeywords = ["sun", "moon", "star", "planet", "rocket"]
    var wildanimalKeywords = ["polar bear", "panda", "eagle", "lion", "wildanimal"]
    var firstinventionsKeywords = ["telephone", "lightbulb", "car", "wheel", "clock"]
    
    var topics_description = ["A Fruit Bowl is a colorful mix of fresh fruits like berries, citrus, and melons. It provides essential vitamins, fiber, and antioxidants that boost immunity and digestion. This refreshing and healthy snack can be enjoyed plain or with yogurt, honey, or nuts. Packed with natural sugars, it also serves as a great energy booster.",
       "Star Fruit, or Carambola, is a tropical fruit known for its unique star shape when sliced. It has a juicy, tangy-sweet flavor and is rich in vitamin C and antioxidants. The fruit is commonly eaten fresh, in salads, or as juice. It is also low in calories and hydrating, making it a perfect summer snack.",
       "Berries like strawberries, blueberries, and raspberries are small but packed with nutrients. They are rich in antioxidants, which help protect the body from free radicals and aging. Berries are also a great source of fiber, promoting good digestion and heart health. They can be eaten fresh, in smoothies, or as a topping for desserts.",
        "The Vermilion Cliffs in Arizona are famous for their stunning red and orange sandstone formations. The area is known for its breathtaking Wave Rock, a natural wonder created by wind and water erosion. Hikers and photographers from around the world visit to experience its unique beauty. This remote location is also home to diverse wildlife like California condors.",
        "Vrindavan, located in India, is a sacred city known for its connection to Lord Krishna. It is home to many historic temples, including the famous Banke Bihari Temple. Thousands of devotees visit each year to participate in colorful festivals like Holi. The town is also known for its serene atmosphere and beautiful riverbanks along the Yamuna.",
        "The Golden Gate Bridge in San Francisco is one of the most iconic landmarks in the world. Completed in 1937, it spans 1.7 miles and connects the city to Marin County. Painted in International Orange, it stands out beautifully against the blue bay. It is a popular spot for tourists, cyclists, and photographers looking for breathtaking views.",
        "The Solar System consists of the Sun, eight planets, moons, asteroids, and comets. Earth is the third planet from the Sun and the only one known to support life. The gas giants like Jupiter and Saturn are massive and have multiple moons. Scientists continue to explore the universe to uncover new mysteries of space.",
        "A star is a giant, glowing ball of gas powered by nuclear fusion at its core. The Sun is the closest star to Earth and provides light and heat for all life. Stars come in different sizes and colors, from small red dwarfs to massive blue giants. Over millions of years, some stars explode into supernovae, creating new celestial bodies.",
        "Rockets are powerful vehicles designed to travel beyond Earth's atmosphere. They use controlled explosions to generate thrust and escape gravity. NASA and other space agencies use rockets to launch satellites and astronauts into space. The development of reusable rockets is making space travel more affordable and accessible.",
        "The Polar Bear is the largest carnivorous bear and is native to the Arctic region. It has thick white fur and a layer of fat to keep warm in freezing temperatures. These powerful swimmers hunt seals and rely on sea ice for survival. Climate change is a major threat to polar bears, as melting ice reduces their hunting grounds.",
        "The Giant Panda is a rare bear species found in the bamboo forests of China. Recognized for its black-and-white fur, it primarily feeds on bamboo. Despite being a bear, pandas are mostly herbivorous and have strong jaws for crushing bamboo stalks. Conservation efforts have helped increase their population, making them a symbol of wildlife protection.",
        "Eagles are powerful birds of prey known for their sharp vision and strong talons. They can spot prey from miles away and dive at incredible speeds to catch it. Bald eagles, the national bird of the USA, symbolize strength and freedom. They build massive nests and are known for their lifelong loyalty to their mates.",
        "The Telephone, invented by Alexander Graham Bell in 1876, revolutionized communication. It allowed people to talk instantly over long distances, replacing letters and telegrams. Early telephones had rotary dials, while modern ones use touchscreens and AI assistants. Today, smartphones combine the telephone with the internet, making global communication effortless.",
        "The invention of the lightbulb by Thomas Edison in 1879 changed the world forever. It replaced candles and oil lamps, making homes and streets safer and brighter. Electric bulbs work by passing current through a filament, producing light. Today, energy-efficient LED bulbs help save electricity and reduce pollution.",
        "The first automobile was invented in the late 19th century, transforming transportation. Early cars ran on steam or gasoline, but modern vehicles include electric and hybrid models. Cars provide convenience and speed but also contribute to pollution. Advances in self-driving technology are shaping the future of the automotive industry."]
    
    var topic = 0
    var currentImageIndex = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultImage.image = UIImage(named: "welcome")
        topicInfoText.text = "Hello, Sri Vidya!!"
        searchButtonAction.isEnabled = false
        ShowPrevImageBtn.isEnabled = false
        ShowNextImageBtn.isEnabled = false
    }
    
    func updateTopic() {
        guard topic >= 0 && topic < arr.count else {
            return
        }
        let images = arr[topic]
        if currentImageIndex >= images.count {
            currentImageIndex = 0
        }

        resultImage.image = UIImage(named: arr[topic][currentImageIndex])
        topicInfoText.text = topics_description[(topic*3) + currentImageIndex]
        ShowPrevImageBtn.isEnabled = currentImageIndex > 0
        ShowNextImageBtn.isEnabled = currentImageIndex < images.count - 1

    }

    @IBAction func searchButtonAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1113)
        //Read the input and check with keywords
        
        let Search = searchTextField.text!.lowercased()
        if fruitKeywords.contains(Search){
            topic = 0
        } else if landmarkKeywords.contains(Search){
            topic = 1
        } else if solarsystemKeywords.contains(Search){
            topic = 2
        } else if wildanimalKeywords.contains(Search){
            topic = 3
        } else if firstinventionsKeywords.contains(Search){
            topic = 4
        } else {
            resultImage.image = UIImage(named: "oops")
            topicInfoText.text = "No result found for \(Search)"
            topic = -1
            return
        }

        currentImageIndex = 0
        updateTopic()
        
    }
    
    @IBAction func ShowNextImageBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105)
        
        if topic >= 0 && topic < arr.count{
            let images = arr[topic]
            if currentImageIndex < images.count - 1 {
                currentImageIndex += 1
                updateTopic()
            }
        }
    }
    
    @IBAction func ShowPrevImageBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105)
        
        if topic >= 0 && topic < arr.count{
            if currentImageIndex > 0 {
                currentImageIndex -= 1
                updateTopic()
            }
        }
    }
    
    @IBAction func ResetBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1111)
        resultImage.image = UIImage(named: "welcome")
        topicInfoText.text = "Hello, Sri Vidya !!"
        searchTextField.text = ""
        topic = -1
        currentImageIndex = 0
        searchButtonAction.isEnabled = false
        ShowPrevImageBtn.isEnabled = false
        ShowNextImageBtn.isEnabled = false
    }
    
    @IBAction func TextField(_ sender: UITextField) {
        if searchTextField.text! != "" {
            searchButtonAction.isEnabled = true
        }
    }
}

