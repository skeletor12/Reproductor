//
//  ViewController.swift
//  Reproductor
//
//  Created by Luis Rodriguez on 01/08/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var reproductor = AVAudioPlayer()
    
    @IBOutlet weak var nombreCantante: UILabel!
    @IBOutlet weak var nombreCancion: UILabel!
    @IBOutlet weak var portada: UIImageView!
    
    
    @IBAction func songsia() {
        let cancionsia = NSBundle.mainBundle().URLForResource("cheaptrills", withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOfURL: cancionsia!)
            reproductor.play()
            nombreCancion.text = "Cheap Thrills"
            nombreCantante.text = "Sia"
            portada.image = UIImage(named: "CheapThrills.jpg")
        }
        catch{
            
            print("Error")
        }
    }
    
    
    @IBAction func songcol() {
        let cancioncol = NSBundle.mainBundle().URLForResource("loversinjapan", withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOfURL: cancioncol!)
            reproductor.play()
            nombreCancion.text = "Lovers in Japan"
            nombreCantante.text = "Coldplay"
            portada.image = UIImage(named: "coldplaylovers.jpg")
        }
        catch{
            
            print("Error")
        }
    }
    
    
    @IBAction func songpos() {
        let cancionpos = NSBundle.mainBundle().URLForResource("i took a pill in ibiza", withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOfURL: cancionpos!)
            reproductor.play()
            nombreCancion.text = "I took a pill in Ibiza"
            nombreCantante.text = "Mike Posner"
            portada.image = UIImage(named: "ITookPillinIbiza.jpg")
        }
        catch{
            
            print("Error")
        }
    }
    
    
    @IBAction func songenq() {
        let cancionenq = NSBundle.mainBundle().URLForResource("dueleelcorazón", withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOfURL: cancionenq!)
            reproductor.play()
            nombreCancion.text = "Duele el corazón"
            nombreCantante.text = "Enrique Iglesias"
            portada.image = UIImage(named: "DueleCorazon.jpg")
        }
        catch{
            
            print("Error")
        }
    }
    
    
    @IBAction func play() {
        if !reproductor.playing{
            reproductor.play()
        }
    }
    
    var arreglo : [String] = ["songsia","songcol","songpos","songenq"]
    
    @IBAction func aleatorio() {
        let numero = Int(arc4random_uniform(4))
        if numero == 0{songsia()}
        else if numero == 1 {songcol()}
        else if numero == 2 {songpos()}
        else {songenq()}
        }
    
    @IBAction func stop() {
        if reproductor.playing{
            reproductor.stop()
            reproductor.currentTime = 0.0
        }
    }
    
    @IBAction func pause() {
        if reproductor.playing{
            reproductor.pause() }
        else { reproductor.play() }
    }
    
    @IBAction func volumen(sender: UISlider) {
        
        reproductor.volume = Float(sender.value) / 0.1
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
}