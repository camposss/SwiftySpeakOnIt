//
//  ViewController.swift
//  SpeakOnIt
//
//  Created by Mark Lintner on 12/15/18.
//  Copyright © 2018 Campos Swift Tutorials. All rights reserved.
//

import UIKit
import Speech
class ViewController: UIViewController {

    //outlets
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var speechRecognitionText: UILabel!
    
    //instance variables
    let audioEngine = AVAudioEngine()
    let speechRecognizer: SFSpeechRecognizer? = SFSpeechRecognizer(locale: Locale(identifier: "en-US"))
    var recognitionTask: SFSpeechRecognitionTask?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func onStartRecording(_ sender: UIButton) {
        self.recognizeSpeech()
    }
    
    @IBAction func onStopRecording(_ sender: UIButton) {
        audioEngine.reset()
    }
    
    
    public func recognizeSpeech(){
        let request = SFSpeechAudioBufferRecognitionRequest()

        let node = audioEngine.inputNode
        node.removeTap(onBus: 0)
        let recordingFormat = node.outputFormat(forBus: 0)
        node.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) {buffer, _ in
            request.append(buffer)
        }
        
        //prepare and record speech
        audioEngine.prepare()
        do {
            try audioEngine.start()
        }catch {
            return print(error)
        }
        
        guard let speechRecognizer = SFSpeechRecognizer() else {
            return
        }
        if !speechRecognizer.isAvailable {
            return;
        }
        
        recognitionTask = speechRecognizer.recognitionTask(with: request, resultHandler: { (result, error) in
            if let result = result {
                let bestString = result.bestTranscription.formattedString
                self.speechRecognitionText.text = bestString
                
            }else if let error = error {
                print(error)
            }
        })
        
    }
    
    
    
}

