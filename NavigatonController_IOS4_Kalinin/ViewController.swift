//
//  ViewController.swift
//  NavigatonController_IOS4_Kalinin
//
//  Created by Калинин Артем Валериевич on 09.07.2020.
//  Copyright © 2020 Калинин Артем Валериевич. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var launchTimeLable: UILabel!
    @IBOutlet weak var launchTime: UILabel!
    @IBOutlet weak var appearenceTimeLable: UILabel!
    @IBOutlet weak var appearenceTime: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpItem()
        setLaunchTime()
    }
    
    // Устанавливаем время каждый раз при открытии view
    override func viewWillAppear(_ animated: Bool) {
        setViewTime()
    }
    
    // Устанавливаем кнопку Update
    func setUpItem() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Update", style: .plain, target: self, action: #selector(update))
    }
    
    //Устанавливаем время запуска приложения
    
    func setLaunchTime() {
        let currentDateTime = Date()

        let forrmatter = DateFormatter()
        forrmatter.timeStyle = .medium
        forrmatter.dateStyle = .long
        
        let dateTimeString = forrmatter.string(from: currentDateTime)
        launchTime.text = dateTimeString
    }
    
    //Устанавливаем время экрана
    func setViewTime() {
        let currentDateTime = Date()
        
        let forrmatter = DateFormatter()
        forrmatter.timeStyle = .medium
        forrmatter.dateStyle = .long
        
        let dateTimeString = forrmatter.string(from: currentDateTime)
        appearenceTime.text = dateTimeString
    }
    
    // Устанавливаем работу кнопки Update
    @objc func update() {
        setViewTime()
    }
}

