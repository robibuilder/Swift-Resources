//
//  ViewController.swift
//  CSV_TEST2
//
//  Created by Jacob Robinett on 10/18/20.
//  Copyright © 2020 Jacob Robinett. All rights reserved.
//

import Cocoa
import Foundation

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // forResources = File Name // ofType = File Extension
        if let filepath = Bundle.main.path(forResource: "static_data", ofType: "csv") {
            do {
                // Puts entire file into one large String
                let contents = try String(contentsOfFile: filepath)

                //print(contents + "\n")
                
                // CSV files do not have commas at the end of the line
                // Splits the string into "rows" based on the new line character
                let rows: [String] = contents.components(separatedBy: "\n")
                // Create a non empty array cells to use append in the next loop
                var cells:[String] = ["start"]
                
                // Number of rows:
                //print("rows count: \(rows.count)")
                
                // TODO: attempt to split rows in to individual cells
                for i in 0...(rows.count - 1){
                    print("rows[\(i)]: \(rows[i])" + "\n")
                    cells.append(contentsOf: rows[i].components(separatedBy: ","))
                }
                
                // Number of Cells:
                //print("cells count: \(cells.count)")
                
                // TESTING: print entire file
                for i in 0...(cells.count - 1){
                    print(cells[i] + " ")
                }
                
                // var someInts = [Int]()
                //var cells = [String]()
                
            } catch {
                // contents could not be loaded
            }
        } else {
            // example.txt not found!
            print("ERROR!!")
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    

}

