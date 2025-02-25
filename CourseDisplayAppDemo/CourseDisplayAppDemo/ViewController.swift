//
//  ViewController.swift
//  CourseDisplayAppDemo
//
//  Created by Sri Vidya Vilipala on 2/11/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageViewOL: UIImageView!
    @IBOutlet weak var crsNumOL: UILabel!
    @IBOutlet weak var crsTitleOL: UILabel!
    @IBOutlet weak var semOfferedOL: UILabel!
    @IBOutlet weak var prevBtnOL: UIButton!
    @IBOutlet weak var nextBtnOL: UIButton!
    
    var imageIndex = 0
    
    let course = [["img01", "44555", "Network Sceurity", "Fall 2024"],
    ["img02","44643", "Mobile Computing", "Summer 2024"],
    ["img03", "44222", "Data Streaming", "Fall 2023"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Update the course details(image, crsNum, title, semOffered) with the first element in array
//        imageViewOL.image = UIImage(named: course[imageIndex][0])
//        crsNumOL.text = course[imageIndex][1]
//        crsTitleOL.text = course[imageIndex][2]
//        semOfferedOL.text = course[imageIndex][3]
        updateCourseDetails(imageIndex)
        //Previous button is disabled
        prevBtnOL.isEnabled = false
        
        //Next button is enabled
        nextBtnOL.isEnabled = true
    }

    @IBAction func prevBtnClicked(_ sender: UIButton) {
        //decrement the image
        imageIndex -= 1
        
        //update the course details(image,crsNum,title,semOffered)
//        imageViewOL.image = UIImage(named: course[imageIndex][0])
//        crsNumOL.text = course[imageIndex][1]
//        crsTitleOL.text = course[imageIndex][2]
//        semOfferedOL.text = course[imageIndex][3]
        updateCourseDetails(imageIndex)
        //Next button should be enable
         nextBtnOL.isEnabled = true
        
        //if the imageIndex os  0, previous button must be disabled
        if(imageIndex == 0){
            prevBtnOL.isEnabled = false
        }
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        
        //increment the image
        imageIndex += 1
        
        //update the course details(image,crsNum,title,semOffered)
//        imageViewOL.image = UIImage(named: course[imageIndex][0])
//        crsNumOL.text = course[imageIndex][1]
//        crsTitleOL.text = course[imageIndex][2]
//        semOfferedOL.text = course[imageIndex][3]
        updateCourseDetails(imageIndex)
        
        //previous buttuon should be enabled
        prevBtnOL.isEnabled = true
        
        //check if the element is at the end of the array, next button should be disabled.
        if(imageIndex == course.count-1){
            nextBtnOL.isEnabled = false
        }
            
    }
    func updateCourseDetails(_ imageNumber:Int){
        imageViewOL.image = UIImage(named: course[imageNumber][0])
        crsNumOL.text = course[imageNumber][1]
        crsTitleOL.text = course[imageNumber][2]
        semOfferedOL.text = course[imageNumber][3]
    }
}

