//
//  ViewController.swift
//  Ind02_Murray_Mitchell
//
//  Created by Mitchell Murray on 3/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    var tracker: [[String]] = [
        ["Empty","SL01", "SL02", "SL03" ],
        ["SL10", "SL11", "SL12", "SL13"],
        ["SL20", "SL21", "SL22", "SL23"],
        ["SL30", "SL31", "SL32", "SL33"],
        ["SL40", "SL41", "SL42", "SL43"]
    ]
    
    var empty:[Int] = [0,0]
    
    @IBOutlet weak var Empty: UIImageView!
    @IBOutlet weak var SL01: UIImageView!
    @IBOutlet weak var SL02: UIImageView!
    @IBOutlet weak var SL03: UIImageView!
    @IBOutlet weak var SL10: UIImageView!
    @IBOutlet weak var SL11: UIImageView!
    @IBOutlet weak var SL12: UIImageView!
    @IBOutlet weak var SL13: UIImageView!
    @IBOutlet weak var SL20: UIImageView!
    @IBOutlet weak var SL21: UIImageView!
    @IBOutlet weak var SL22: UIImageView!
    @IBOutlet weak var SL23: UIImageView!
    @IBOutlet weak var SL30: UIImageView!
    @IBOutlet weak var SL31: UIImageView!
    @IBOutlet weak var SL32: UIImageView!
    @IBOutlet weak var SL33: UIImageView!
    @IBOutlet weak var SL40: UIImageView!
    @IBOutlet weak var SL41: UIImageView!
    @IBOutlet weak var SL42: UIImageView!
    @IBOutlet weak var SL43: UIImageView!
    @IBOutlet weak var Answer: UIImageView!
    @IBAction func showAnswer(_ sender: Any) {
        if Answer.alpha == 1{
            Answer.alpha = 0
        } else {
            Answer.alpha = 1
        }
        print(isBesideEmpty(image: SL01))
    }
    @IBAction func Tapped(_ sender: UITapGestureRecognizer) {
        
    }
    
    func isBesideEmpty(image: UIImageView) -> Int{
        var names:[UIImageView: String] = [
            SL01: "SL01",SL02: "SL02",SL03: "SL03",
            SL10: "SL10",SL11: "SL11",SL12: "SL12",SL13: "SL13",
            SL20: "SL20",SL21: "SL21",SL22: "SL22",SL23: "SL23",
            SL30: "SL30",SL31: "SL31",SL32: "SL32",SL33: "SL33",
            SL40: "SL40",SL41: "SL41",SL42: "SL42",SL43: "SL43"
        ]
        var location: [Int] = [0,0]
        var end1 = false
        for i in tracker{
            location[1] = 0
            for j in i{
                if names[image] == j {
                    end1 = true
                    break
                }
                location[1] += 1
            }
            if end1 {break}
            location[0] += 1
        }
        var emplocal = 0
        
        if location[0] != 0 && tracker[location[0]-1][location[1] ] == "Empty"{
            emplocal = 1
        } else if location[0] != 4 && tracker[location[0]+1][location[1] ] == "Empty"{
            emplocal = 2
        } else if location[1] != 0 && tracker[location[0]][location[1]-1 ] == "Empty"{
            emplocal = 3
        } else if location[1] != 3 && tracker[location[0]][location[1]+1 ] == "Empty"{
            emplocal = 4
        }
        return emplocal
    }
    
                    
    
    
    
    
}

