//
//  ViewController.swift
//  Temporizador
//
//  Created by Celia on 17/12/2018.
//  Copyright © 2018 Celia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var telefonos : [UIImage] = []
    
    @IBOutlet weak var fotos: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(fueraDeTiempo), userInfo: nil, repeats: true)
        
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(fueraDeTiempo2), userInfo: nil, repeats: true)
       telefonos = [UIImage(named:"imgLisboa"),UIImage(named:"imgMadrid"),UIImage(named:"imgBrasil"), UIImage(named:"imgBrasilia"), UIImage(named:"imgPuertoRico"), UIImage(named:"imgGinebra"), UIImage(named:"imgLaHabana"),UIImage(named:"imgRoma") ] as! [UIImage]
      /*  telefonos = [, imgMadrid, imgBrasil, imgBimgLisboarasilia, imgPuertoRico, imgGinebra, imgLaHabana, imgRoma]*/
    }
    
    @objc func fueraDeTiempo2(){
        let azar = Int(arc4random() % 8)
        fotos.image = telefonos[azar]
    }
    
    @objc func fueraDeTiempo(){
        let rojo = CGFloat(arc4random() % 255) / 255
        let azul = CGFloat(arc4random() % 255) / 255
        let verde = CGFloat(arc4random() % 255) / 255
        
        view.backgroundColor = UIColor(red: rojo,green: verde,blue: azul,alpha: 1)
    }
    


}

