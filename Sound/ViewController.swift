//
//  ViewController.swift
//  Sound
//
//  Created by Sallivan James on 2021/02/06.
//

import UIKit
//音声、動画などを簡単に扱えるようにしてくれる機能
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムのサウンドファイルを読み込んでプレイヤーをつくる
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapDrumButton(){
//        ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
//        ドラムの音を再生する
        drumSoundPlayer.play()
        
    }


}

