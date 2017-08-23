//
//  ViewController.swift
//  ShikamiC - Assignment4
//
//  Created by Christopher Shikami on 1/28/17.
//  Copyright © 2017 Chris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberArray = [String]()
    var typingNumber = false
    var favoriteC: favoriteChannel?
    
    @IBOutlet weak var powerSwitch: UISwitch!
    @IBOutlet weak var volumeSlider: UISlider!
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var channelUpButton: UIButton!
    @IBOutlet weak var channelDownButton: UIButton!
    
    @IBOutlet weak var favoriteChannelSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var powerDisplay: UILabel!

    @IBOutlet weak var volumeDisplay: UILabel!
    
    @IBOutlet weak var channelDisplay: UILabel!
    
    @IBAction func powerSwitchToggled(_ sender: UISwitch) {
        powerDisplay.text = (sender.isOn ? "On" : "Off")
        powerSwitch.setOn(sender.isOn, animated: true)
        if sender.isOn == true {
            powerDisplay.text = "On"
            volumeSlider.isEnabled = true
            zeroButton.isEnabled = true
            oneButton.isEnabled = true
            twoButton.isEnabled = true
            threeButton.isEnabled = true
            fourButton.isEnabled = true
            fiveButton.isEnabled = true
            sixButton.isEnabled = true
            sevenButton.isEnabled = true
            eightButton.isEnabled = true
            nineButton.isEnabled = true
            channelUpButton.isEnabled = true
            channelDownButton.isEnabled = true
            favoriteChannelSegmentedControl.isEnabled = true
        } else {
            powerDisplay.text = "Off"
            volumeSlider.isEnabled = false
            zeroButton.isEnabled = false
            oneButton.isEnabled = false
            twoButton.isEnabled = false
            threeButton.isEnabled = false
            fourButton.isEnabled = false
            fiveButton.isEnabled = false
            sixButton.isEnabled = false
            sevenButton.isEnabled = false
            eightButton.isEnabled = false
            nineButton.isEnabled = false
            channelUpButton.isEnabled = false
            channelDownButton.isEnabled = false
            favoriteChannelSegmentedControl.isEnabled = false
            
        }
    }
    
    @IBAction func volumeSliderMoved(_ sender: UISlider) {
        volumeDisplay.text =
            "\(Int(sender.value))"
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        let number: String = sender.currentTitle!
        
        if numberArray.count == 0 || numberArray.count == 1 {
            numberArray.append(number)
        }
        if numberArray.count == 2 {
            let newChannel = numberArray[0] + numberArray[1]
            
            if newChannel == "00" {
                numberArray.removeAll()
            } else {
                channelDisplay.text = newChannel
                numberArray.removeAll()
            }
        }
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
        let numberDisplay = Int(channelDisplay.text!)
        if numberDisplay! + 1 > 99 {
        } else {
            let incrementedNumber = numberDisplay! + 1
            channelDisplay.text = "\(incrementedNumber)"
        }
    }
    
    @IBAction func subtractButtonPressed(_ sender: UIButton) {
        let numberDisplay = Int(channelDisplay.text!)
        if numberDisplay! - 1 < 1 {
        } else {
            let decrementedNumber = numberDisplay! - 1
            channelDisplay.text = "\(decrementedNumber)"
        }
    }
    
    @IBAction func favoriteChannelNameSelected(_ sender: UISegmentedControl) {
        //if let name = sender.titleForSegment(at: sender.selectedSegmentIndex) 
        let index = favoriteChannelSegmentedControl.selectedSegmentIndex
            channelDisplay.text = favoriteChannels[index].number
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        
            favoriteChannelSegmentedControl.setTitle(favoriteChannels[0].name, forSegmentAt: 0)
        
       
            favoriteChannelSegmentedControl.setTitle(favoriteChannels[1].name, forSegmentAt: 1)
        
                    favoriteChannelSegmentedControl.setTitle(favoriteChannels[2].name, forSegmentAt: 2)
        
            favoriteChannelSegmentedControl.setTitle(favoriteChannels[3].name, forSegmentAt: 3)
        }
    }



