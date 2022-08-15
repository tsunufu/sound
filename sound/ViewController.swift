//
//  ViewController.swift
//  sound
//
//  Created by ryo on 2022/08/07.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムを表示させる変数
    @IBOutlet var drumButton: UIButton!
    
    //ピアノ
    @IBOutlet var pianoButton: UIButton!
    
    //ギター
    @IBOutlet var guitarButton: UIButton!
    
    //ドラムのサウンドファイル読み込んで，プレイヤー作る
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    //ピアノのサウンドファイル
    let pianoSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    //ギターのサウンドファイル
    let guitarSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ドラムタップ時に呼ばれる
    @IBAction func touchDownDrumButton(){
        
        //ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        //再生時間0に戻す
        drumSoundPlayer.currentTime = 0
        
        //ドラム再生
        drumSoundPlayer.play()
        
    }
    
    //ドラムボタンの上でタッチが終わる時に呼び出し
    @IBAction func touchUpDrumButton(){
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    //ピアノタップ時
    @IBAction func touchDownPianoButton(){
        
        //ピアノが鳴っている画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        //再生時間0に戻す
        pianoSoundPlayer.currentTime = 0
        
        //ピアノ再生
        pianoSoundPlayer.play()
        
    }
    
    @IBAction func touchUpPianoButton(){
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    //ギタータップ時
    @IBAction func touchDownGuitarButton(){
        
        //ギターが鳴っている画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        
        //再生時間0に戻す
        guitarSoundPlayer.currentTime = 0
        
        //ギター再生
        guitarSoundPlayer.play()
        
    }
    
    @IBAction func touchUpGuitarButton(){
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }

}

