//
//  ViewController.swift
//  Ind02_Murray_Mitchell
// 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
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
    @IBOutlet weak var Ansbtn: UIButton!
    @IBAction func showAnswer(_ sender: Any) {
        if Answer.alpha == 1{
            Answer.alpha = 0
            Ansbtn.setImage(UIImage.init(named: "button_show-answer"), for: .normal)
        } else {
            Answer.alpha = 1
            Ansbtn.setImage(UIImage.init(named: "button_hide-answer"), for: .normal)
        }
        print(isBesideEmpty(image: SL01))
    }
    @IBOutlet var Tap00: UITapGestureRecognizer!
    @IBOutlet var Tap01: UITapGestureRecognizer!
    @IBOutlet var Tap02: UITapGestureRecognizer!
    @IBOutlet var Tap03: UITapGestureRecognizer!
    @IBOutlet var Tap10: UITapGestureRecognizer!
    @IBOutlet var Tap11: UITapGestureRecognizer!
    @IBOutlet var Tap12: UITapGestureRecognizer!
    @IBOutlet var Tap13: UITapGestureRecognizer!
    @IBOutlet var Tap20: UITapGestureRecognizer!
    @IBOutlet var Tap21: UITapGestureRecognizer!
    @IBOutlet var Tap22: UITapGestureRecognizer!
    @IBOutlet var Tap23: UITapGestureRecognizer!
    @IBOutlet var Tap30: UITapGestureRecognizer!
    @IBOutlet var Tap31: UITapGestureRecognizer!
    @IBOutlet var Tap32: UITapGestureRecognizer!
    @IBOutlet var Tap33: UITapGestureRecognizer!
    @IBOutlet var Tap40: UITapGestureRecognizer!
    @IBOutlet var Tap41: UITapGestureRecognizer!
    @IBOutlet var Tap42: UITapGestureRecognizer!
    @IBOutlet var Tap43: UITapGestureRecognizer!
    
    
    
    @IBAction func Tapped(_ sender: UITapGestureRecognizer) {
        let taps:[UITapGestureRecognizer: UIImageView] = [
            Tap01:SL01, Tap02:SL02, Tap03:SL03,
            Tap10:SL10, Tap11:SL11, Tap12:SL12, Tap13:SL13,
            Tap20:SL20, Tap21:SL21, Tap22:SL22, Tap23:SL23,
            Tap30:SL30, Tap31:SL31, Tap32:SL32, Tap33:SL33,
            Tap40:SL40, Tap41:SL41, Tap42:SL42, Tap43:SL43
        ]
        let emplocal = isBesideEmpty(image: taps[sender]!)
        print(emplocal)
        swap(direction: emplocal)
    }
    func swap(direction: Int) {
        var arremp = [0,0]
        var end1 = false
        var replace = "Empty"
        let names:[String: UIImageView] = [
            "SL01": SL01,"SL02": SL02,"SL03": SL03,
            "SL10": SL10,"SL11": SL11,"SL12": SL12,"SL13": SL13,
            "SL20": SL20,"SL21": SL21,"SL22": SL22,"SL23": SL23,
            "SL30": SL30,"SL31": SL31,"SL32": SL32,"SL33": SL33,
            "SL40": SL40,"SL41": SL41,"SL42": SL42,"SL43": SL43
        ]
        for i in tracker{
            arremp[1] = 0
            for j in i{
                if j == "Empty" {
                    end1 = true
                    break
                }
                arremp[1] += 1
            }
            if end1 {break}
            arremp[0] += 1
        }
        print(arremp)
        if direction == 0 {}
        else if direction == 1 {
            Empty.center.y += 93
            replace = tracker[arremp[0] + 1][arremp[1]]
            names[replace]?.center.y -= 93
            tracker[arremp[0] + 1][arremp[1]] = "Empty"
        }else if direction == 2{
            Empty.center.y -= 93
            replace = tracker[arremp[0] - 1][arremp[1]]
            names[replace]?.center.y += 93
            tracker[arremp[0] - 1][arremp[1]] = "Empty"
        }else if direction == 3{
            Empty.center.x += 93
            replace = tracker[arremp[0]][arremp[1] + 1]
            names[replace]?.center.x -= 93
            tracker[arremp[0]][arremp[1] + 1] = "Empty"
        }else if direction == 4{
            Empty.center.x -= 93
            replace = tracker[arremp[0]][arremp[1] - 1]
            names[replace]?.center.x += 93
            tracker[arremp[0]][arremp[1] - 1] = "Empty"
        }
        tracker[arremp[0]][arremp[1]] = replace
        
        
    }
    
    func isBesideEmpty(image: UIImageView) -> Int{
        let names:[UIImageView: String] = [
            SL01: "SL01",SL02: "SL02",SL03: "SL03",
            SL10: "SL10",SL11: "SL11",SL12: "SL12",SL13: "SL13",
            SL20: "SL20",SL21: "SL21",SL22: "SL22",SL23: "SL23",
            SL30: "SL30",SL31: "SL31",SL32: "SL32",SL33: "SL33",
            SL40: "SL40",SL41: "SL41",SL42: "SL42",SL43: "SL43"
        ]
        print(names[image])
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
        print(location)
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
    
    @IBAction func Shuffle(_ sender: UIButton) {
        for i in 0..<15 {
            var arremp = [0,0]
            var end1 = false
            for i in tracker{
                arremp[1] = 0
                for j in i{
                    if j == "Empty" {
                        end1 = true
                        break
                    }
                    arremp[1] += 1
                }
                if end1 {break}
                arremp[0] += 1
            }
            var option:[Int:Int] = [1:1,2:2,3:3,4:4]
            if arremp[0] == 4 {
                option.removeValue(forKey: 1)
            }
            if arremp[0] == 0 {
                option.removeValue(forKey: 2)
            }
            if arremp[1] == 3 {
                option.removeValue(forKey: 3)
            }
            if arremp[1] == 0 {
                option.removeValue(forKey: 4)
            }
            print(option)
            var available:[Int] = []
            for (key, val) in option {
                available.append(val)
            }
            print(available)
            var choice = available[Int.random(in: 0..<available.count)]
            swap(direction: choice)
        }
    }
    
    
    
    
    
}

