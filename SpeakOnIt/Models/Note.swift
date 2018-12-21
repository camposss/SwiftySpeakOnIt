//
//  NoteModel.swift
//  SpeakOnIt
//
//  Created by Mark Lintner on 12/20/18.
//  Copyright © 2018 Campos Swift Tutorials. All rights reserved.
//

import Foundation


public class Note {
    public var title: String
    public var dateCreated: Date
    public var description: String
    
    init(title: String, dateCreated: Date, description: String) {
        self.title = title
        self.dateCreated = dateCreated
        self.description = description
    }
    
    
}
