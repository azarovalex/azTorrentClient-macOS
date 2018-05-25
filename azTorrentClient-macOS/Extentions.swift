//
//  Extentions.swift
//  azTorrentClient-macOS
//
//  Created by Alex Azarov on 5/25/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import Cocoa

extension NSOpenPanel {
    var selectUrl: URL? {
        title = "Select torrent file"
        allowsMultipleSelection = false
        canChooseDirectories = false
        canChooseFiles = true
        canCreateDirectories = false
        allowedFileTypes = ["torrent"]
        return runModal() == .OK ? urls.first : nil
    }
}
