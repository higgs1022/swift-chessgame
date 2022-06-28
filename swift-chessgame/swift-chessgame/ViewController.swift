//
//  ViewController.swift
//  swift-chessgame
//
//  Created by main on 2022/06/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var verticalStack: UIStackView!
    @IBOutlet weak var horizontalStack0: UIStackView!
    @IBOutlet weak var horizontalStack1: UIStackView!
    @IBOutlet weak var horizontalStack2: UIStackView!
    @IBOutlet weak var horizontalStack3: UIStackView!
    @IBOutlet weak var horizontalStack4: UIStackView!
    @IBOutlet weak var horizontalStack5: UIStackView!
    @IBOutlet weak var horizontalStack6: UIStackView!
    @IBOutlet weak var horizontalStack7: UIStackView!
    
    
    let board = Board()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pieceTouch(_ sender: UIButton) {
        var x = -1
        var y = -1
        
        if horizontalStack0.contains(sender) {
            y = 1
            horizontalStack0
                .arrangedSubviews
                .enumerated()
                .forEach { index, element in
                    if element == sender {
                        x = index + 1
                    }
                }
        }
        if horizontalStack1.contains(sender) {
            y = 2
            horizontalStack1
                .arrangedSubviews
                .enumerated()
                .forEach { index, element in
                    if element == sender {
                        x = index + 1
                    }
                }
        }
        if horizontalStack2.contains(sender) {
            y = 3
            horizontalStack2
                .arrangedSubviews
                .enumerated()
                .forEach { index, element in
                    if element == sender {
                        x = index + 1
                    }
                }
        }
        if horizontalStack3.contains(sender) {
            y = 4
            horizontalStack3
                .arrangedSubviews
                .enumerated()
                .forEach { index, element in
                    if element == sender {
                        x = index + 1
                    }
                }
        }
        if horizontalStack4.contains(sender) {
            y = 5
            horizontalStack4
                .arrangedSubviews
                .enumerated()
                .forEach { index, element in
                    if element == sender {
                        x = index + 1
                    }
                }
        }
        if horizontalStack5.contains(sender) {
            y = 6
            horizontalStack5
                .arrangedSubviews
                .enumerated()
                .forEach { index, element in
                    if element == sender {
                        x = index + 1
                    }
                }
        }
        if horizontalStack6.contains(sender) {
            y = 7
            horizontalStack6
                .arrangedSubviews
                .enumerated()
                .forEach { index, element in
                    if element == sender {
                        x = index + 1
                    }
                }
        }
        if horizontalStack7.contains(sender) {
            y = 8
            horizontalStack7
                .arrangedSubviews
                .enumerated()
                .forEach { index, element in
                    if element == sender {
                        x = index + 1
                    }
                }
        }
        
        print("\(x) \(y)")
    }
    
}

