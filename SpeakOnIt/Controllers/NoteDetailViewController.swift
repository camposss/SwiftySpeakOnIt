//
//  NoteDetailViewController.swift
//  SpeakOnIt
//
//  Created by Mark Lintner on 12/24/18.
//  Copyright © 2018 Campos Swift Tutorials. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {

    //outlets
    @IBOutlet weak var noteTitleLabel: UILabel!
    @IBOutlet weak var noteDateLabel: UILabel!
    @IBOutlet weak var noteDescriptionLabel: UITextView!
    
    
    var selectedNote: Note?

    override func viewDidLoad() {
        super.viewDidLoad()
        renderNoteAttributes()
    }
    
    public func renderNoteAttributes() {
        noteTitleLabel?.text = selectedNote?.title
        noteDateLabel?.text = selectedNote?.dateCreated.toString(dateFormat: "MM/dd/yyyy")
        noteDescriptionLabel.text = selectedNote?.description
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
