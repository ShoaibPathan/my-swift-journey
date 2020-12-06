//
//  ClassicaModel.swift
//  Classica
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI
import AVKit

class ClassicaModel: ObservableObject {
    // MARK: - PROPERTIES
    var audioPlayer: AVAudioPlayer?
    
    // MARK: - LOAD MUSIC
    func loadMusic(fileName: String, fileType: String) {
        if let filePath = Bundle.main.path(forResource: fileName, ofType: fileType) {
            let fileURL = URL(fileURLWithPath: filePath)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
            } catch {
                print("Error: File not found.")
            }
        }
    }
    
    // MARK: - LOAD AND PLAY
    func loadAndPlay(song: String, fileType: String) {
        self.loadMusic(fileName: song, fileType: fileType)
        self.playMusic()
    }
    
    // MARK: - PLAY
    func playMusic() {
        audioPlayer?.play()
        audioPlayer?.numberOfLoops = 0
    }
    
    // MARK: PAUSE
    func pauseMusic() {
        audioPlayer?.pause()
    }
    
    // MARK: STROP
    func stopMusic() {
        audioPlayer?.stop()
        audioPlayer = nil
    }
}
