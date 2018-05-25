//
//  ViewController.swift
//  azTorrentClient-macOS
//
//  Created by Alex Azarov on 5/24/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import Cocoa

class MainWindowVC: NSViewController {
    
    @IBOutlet weak var torrentInfoTextField: NSScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func openTorrentBtnClicked(_ sender: Any) {
        if let url = NSOpenPanel().selectUrl {
            do {
                let torrentFileContent = try String(contentsOf: url, encoding: .ascii)
                print(torrentFileContent)
            }
            catch {
                debugPrint("Error opening .torrent file: " + error.localizedDescription)
            }
        } else {
            print("file selection was canceled")
        }
    }
    
}

