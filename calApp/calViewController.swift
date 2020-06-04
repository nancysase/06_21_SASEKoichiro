//
//  calViewController.swift
//  calApp
//
//  Created by SASE Koichiro on 2020/05/31.
//  Copyright © 2020 SASE Koichiro. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation

class calViewController: UIViewController{
//    , UITextFieldDelegate必要に応じて追加
    // AVAudioPlayerDelegate 無しで行ける
        
    @IBOutlet weak var baseView: UIView!
    
    var soundPlayer: AVAudioPlayer!
    // : !　と= ()の違いは？
    
    // 現在選択されているTextField
    var selectedTextField:UITextField?

    
    @IBOutlet weak var stopWatchView: UILabel!
    
    @IBOutlet weak var firstNum1: UILabel!
    @IBOutlet weak var operationSymbol1: UILabel!
    @IBOutlet weak var secondNum1: UILabel!
    @IBOutlet weak var answerTextField1: UITextField!
        
    @IBOutlet weak var firstNum2: UILabel!
    @IBOutlet weak var operationSymbol2: UILabel!
    @IBOutlet weak var secondNum2: UILabel!
    @IBOutlet weak var answerTextField2: UITextField!
    
    @IBOutlet weak var firstNum3: UILabel!
    @IBOutlet weak var operationSymbol3: UILabel!
    @IBOutlet weak var secondNum3: UILabel!
    @IBOutlet weak var answerTextField3: UITextField!
    
    @IBOutlet weak var firstNum4: UILabel!
    @IBOutlet weak var operationSymbol4: UILabel!
    @IBOutlet weak var secondNum4: UILabel!
    @IBOutlet weak var answerTextField4: UITextField!

    @IBOutlet weak var firstNum5: UILabel!
    @IBOutlet weak var operationSymbol5: UILabel!
    @IBOutlet weak var secondNum5: UILabel!
    @IBOutlet weak var answerTextField5: UITextField!

    @IBOutlet weak var firstNum6: UILabel!
    @IBOutlet weak var operationSymbol6: UILabel!
    @IBOutlet weak var secondNum6: UILabel!
    @IBOutlet weak var answerTextField6: UITextField!

    @IBOutlet weak var firstNum7: UILabel!
    @IBOutlet weak var operationSymbol7: UILabel!
    @IBOutlet weak var secondNum7: UILabel!
    @IBOutlet weak var answerTextField7: UITextField!

    @IBOutlet weak var firstNum8: UILabel!
    @IBOutlet weak var operationSymbol8: UILabel!
    @IBOutlet weak var secondNum8: UILabel!
    @IBOutlet weak var answerTextField8: UITextField!

    @IBOutlet weak var firstNum9: UILabel!
    @IBOutlet weak var operationSymbol9: UILabel!
    @IBOutlet weak var secondNum9: UILabel!
    @IBOutlet weak var answerTextField9: UITextField!

    @IBOutlet weak var firstNum10: UILabel!
    @IBOutlet weak var operationSymbol10: UILabel!
    @IBOutlet weak var secondNum10: UILabel!
    @IBOutlet weak var answerTextField10: UITextField!

    @IBOutlet weak var goalTimeView: UILabel!
    
    let symbol = ["+", "-", "×", "÷"]
    
    var choosedSymbol = String()
    var firstNum = Int()
    var secondNum = Int()
    var calAnswer = Int()
    var point = 0
    
    var baseTimer = Timer()
    var stopWatch = 0.00
    
    
    @IBOutlet weak var scrollView: UIScrollView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textFieldInit() // TextFieldのセットアップ
//        answerTextField1.delegate = self
//        soundPlayer.delegate = self
//        soundPlayer.prepareToPlay()
// delegate, prepareToPlay()無しでも行ける（最初のDelegateとセット）
        // 画面サイズ取得


    }
    
            
    @IBAction func startButton(_ sender: Any) {
        cal()
        firstNum1.text = String(firstNum)
        operationSymbol1.text = choosedSymbol
        secondNum1.text = String(secondNum)
        baseTimer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timeUp), userInfo: nil, repeats: true)
        startSound()
    }
    @objc func timeUp(){
        stopWatch += 0.01
        stopWatch = round(stopWatch * 100)/100
        stopWatchView.text = String(stopWatch)
    }
    
    func startSound(){
        let soundPath1 = Bundle.main.bundleURL.appendingPathComponent("question1.mp3", isDirectory: true)
//         pathを指定した上で、urlを指定するやり方もあるが何が違う？
//        let path1 = Bundle.main.path(forResource: "question1", ofType: "mp3")!
//        let url = URL(fileURLWithPath: path1)
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: soundPath1)
            soundPlayer.play()
        } catch {
            print("エラー") //音楽再生
        }
    }

    @IBAction func answerFixButton1(_ sender: Any) {
        answer1()
    }
    func answer1(){
        answerTextField1.isEnabled = false
        if String(calAnswer) == answerTextField1.text{
            point += 1
            correctSound()
        } else {
            incorrectSound()
        }
        cal()
        firstNum2.text = String(firstNum)
        operationSymbol2.text = choosedSymbol
        secondNum2.text = String(secondNum)
    }
    
    @IBAction func answerFixButton2(_ sender: Any) {
        answer2()
    }
    func answer2(){
        answerTextField2.isEnabled = false
        if String(calAnswer) == answerTextField2.text{
            point += 1
            correctSound()
        } else {
            incorrectSound()
        }
        cal()
        firstNum3.text = String(firstNum)
        operationSymbol3.text = choosedSymbol
        secondNum3.text = String(secondNum)
    }
    
    @IBAction func answerFixButton3(_ sender: Any) {
        answer3()
    }
    func answer3(){
        answerTextField3.isEnabled = false
        if String(calAnswer) == answerTextField3.text{
            point += 1
            correctSound()
        } else {
            incorrectSound()
        }
        cal()
        firstNum4.text = String(firstNum)
        operationSymbol4.text = choosedSymbol
        secondNum4.text = String(secondNum)
    }
    
    @IBAction func answerFixButton4(_ sender: Any) {
        answer4()
    }
    func answer4(){
        answerTextField4.isEnabled = false
        if String(calAnswer) == answerTextField4.text{
            point += 1
            correctSound()
        } else {
            incorrectSound()
        }
        cal()
        firstNum5.text = String(firstNum)
        operationSymbol5.text = choosedSymbol
        secondNum5.text = String(secondNum)
    }
    
    @IBAction func answerFixButton5(_ sender: Any) {
        answer5()
    }
    func answer5(){
        answerTextField5.isEnabled = false
        if String(calAnswer) == answerTextField5.text{
            point += 1
            correctSound()
        } else {
            incorrectSound()
        }
        cal()
        firstNum6.text = String(firstNum)
        operationSymbol6.text = choosedSymbol
        secondNum6.text = String(secondNum)
    }
    
    @IBAction func answerFixButton6(_ sender: Any) {
        answer6()
    }
    func answer6(){
        answerTextField6.isEnabled = false
        if String(calAnswer) == answerTextField6.text{
            point += 1
            correctSound()
        } else {
            incorrectSound()
        }
        cal()
        firstNum7.text = String(firstNum)
        operationSymbol7.text = choosedSymbol
        secondNum7.text = String(secondNum)
    }
    
    @IBAction func answerFixButton7(_ sender: Any) {
        answer7()
    }
    func answer7(){
        answerTextField7.isEnabled = false
        if String(calAnswer) == answerTextField7.text{
            point += 1
            correctSound()
        } else {
            incorrectSound()
        }
        cal()
        firstNum8.text = String(firstNum)
        operationSymbol8.text = choosedSymbol
        secondNum8.text = String(secondNum)
    }
    
    @IBAction func answerFixButton8(_ sender: Any) {
        answer8()
    }
    func answer8(){
        answerTextField8.isEnabled = false
        if String(calAnswer) == answerTextField8.text{
            point += 1
            correctSound()
        } else {
            incorrectSound()
        }
        cal()
        firstNum9.text = String(firstNum)
        operationSymbol9.text = choosedSymbol
        secondNum9.text = String(secondNum)
    }
    
    @IBAction func answerFixButton9(_ sender: Any) {
        answer9()
    }
    func answer9(){
        answerTextField9.isEnabled = false
        if String(calAnswer) == answerTextField9.text{
            point += 1
            correctSound()
        } else {
            incorrectSound()
        }
        cal()
        firstNum10.text = String(firstNum)
        operationSymbol10.text = choosedSymbol
        secondNum10.text = String(secondNum)
    }
    
    @IBAction func answerFixButton10(_ sender: Any) {
        answer10()
    }
    func answer10(){
        answerTextField10.isEnabled = false
        if String(calAnswer) == answerTextField10.text{
            point += 1
            correctSound()
        } else {
            incorrectSound()
        }
        baseTimer.invalidate()
        goalTimeView.text = stopWatchView.text
        UserDefaults.standard.set(point, forKey: "result")
        UserDefaults.standard.set(goalTimeView.text, forKey: "time")
        moveToScoreView()
    }
    
    
    
    
    func cal(){
        choosedSymbol = symbol.randomElement()!
        secondNum = Int.random(in: 1..<10)
        if choosedSymbol == "+"{
            firstNum = Int.random(in: 1..<10)
            calAnswer = firstNum + secondNum
        }else if choosedSymbol == "-"{
            firstNum = Int.random(in: 1..<10)
            calAnswer = firstNum - secondNum
        }else if choosedSymbol == "×"{
            firstNum = Int.random(in: 1..<10)
            calAnswer = firstNum * secondNum
        }else if choosedSymbol == "÷"{
            firstNum = secondNum * Int.random(in: 1..<10)
            calAnswer = firstNum / secondNum
        }
    }
    
    func correctSound(){
        let soundPath2 = Bundle.main.bundleURL.appendingPathComponent("correct2.mp3", isDirectory: true)
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: soundPath2)
            soundPlayer.play()
        } catch {
            print("エラー") //音楽再生
        }
    }
    
    func incorrectSound(){
        let soundPath3 = Bundle.main.bundleURL.appendingPathComponent("incorrect2.mp3", isDirectory: true)
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: soundPath3)
            soundPlayer.play()
        } catch {
            print("エラー") //音楽再生
        }
    }
    
    func moveToScoreView(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
        let vc = resultViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // キーボードイベントの監視開始
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // キーボードイベントの監視解除
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
      


//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        answer1()
//        return true
//    }
    
    
}

extension calViewController: UITextFieldDelegate {
    func textFieldInit() {
        // 最初に選択されているTextFieldをセット
        self.selectedTextField = self.answerTextField1
        
        // 各TextFieldのdelegate 色んなイベントが飛んでくるようになる
        self.answerTextField2.delegate = self
        self.answerTextField3.delegate = self
        self.answerTextField4.delegate = self
        self.answerTextField5.delegate = self
        self.answerTextField6.delegate = self
        self.answerTextField7.delegate = self
        self.answerTextField8.delegate = self
        self.answerTextField9.delegate = self
        self.answerTextField10.delegate = self
 
    }
    
    // キーボードが表示された時に呼ばれる
    @objc func keyboardWillBeShown(notification: NSNotification) {
        if let userInfo = notification.userInfo {
            if let keyboardFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as AnyObject).cgRectValue, let animationDuration = (userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as AnyObject).doubleValue {
//                restoreScrollViewSize()
                
                let convertedKeyboardFrame = baseView.convert(keyboardFrame, to: baseView)
                print(convertedKeyboardFrame)
                // 現在選択中のTextFieldの下部Y座標とキーボードの高さから、スクロール量を決定
                let conversion_selectedTextField = baseView.convert(selectedTextField!.frame, to: nil)

                print(conversion_selectedTextField)
                let offsetY: CGFloat = convertedKeyboardFrame.minY -  conversion_selectedTextField.minY
                print(offsetY)
                if offsetY < 0 {
                updateScrollViewSize(moveSize: -offsetY, duration: animationDuration)
            }
            }
        }
    }
    
    // キーボードが閉じられた時に呼ばれる
    @objc func keyboardWillBeHidden(notification: NSNotification) {
        restoreScrollViewSize()
    }
    
    // TextFieldが選択された時
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // 選択されているTextFieldを更新
        self.selectedTextField = textField
    }
    
    // リターンが押された時
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // キーボードを閉じる
        textField.resignFirstResponder()
        return true
    }
    
    // moveSize分Y方向にスクロールさせる
    func updateScrollViewSize(moveSize: CGFloat, duration: TimeInterval) {
//        UIView.animate(withDuration: 0.5){
            let contentInsets = UIEdgeInsets(top: 0, left: 0, bottom: moveSize, right: 0)
            self.scrollView.contentInset = contentInsets
            self.scrollView.scrollIndicatorInsets = contentInsets
            self.scrollView.contentOffset = CGPoint(x: 0, y: moveSize)
//        }

    }
    
    func restoreScrollViewSize() {
        // キーボードが閉じられた時に、スクロールした分を戻す
        self.scrollView.contentInset = UIEdgeInsets.zero
        self.scrollView.scrollIndicatorInsets = UIEdgeInsets.zero
    }
}
