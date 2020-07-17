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
    
    // Используем переменную для определения текущего времени
    var mediumDateTime: String {
        let currentDateTime = Date()

        let forrmatter = DateFormatter()
        forrmatter.timeStyle = .medium
        forrmatter.dateStyle = .long

        let dateTimeString = forrmatter.string(from: currentDateTime)
        return dateTimeString
    }
    
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
        launchTime.text = mediumDateTime
    }
    
    //Устанавливаем время экрана
    func setViewTime() {
        appearenceTime.text = mediumDateTime
    }
    
    // Устанавливаем работу кнопки Update
    @objc func update() {
        setViewTime()
    }
}



