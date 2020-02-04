//
//  ViewController.swift
//  Snap
//
//  Created by Cátia Souza on 03/02/20.
//  Copyright © 2020 Cátia Souza. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var button: UIButton!
    
    let someImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.image = UIImage(named: "chucknorris")
        theImageView.translatesAutoresizingMaskIntoConstraints = false //You
        return theImageView
    }()
    
    lazy var box = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setup()
        animateImage()
        view.addSubview(someImageView)
        someImageViewConstraints()
        
        //LABEL
        //        let childView = UIView()
        //        childView.backgroundColor = .blue
        //        self.view.addSubview(childView)
        //
        //        childView.snp.makeConstraints { (make) in
        //            make.size.equalTo(CGSize(width: 300, height: 100))
        //            make.top.equalTo(self.view.snp.top).offset(800)
        //            make.centerX.equalTo(self.view)
        //        }
        
       
    }
    func animateImage(){
    UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 6, options: [], animations: {
                   self.someImageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                   self.someImageView.transform = .identity
               
           }) { finished in
               
           }
    }
    @objc func buttonAction(){
       
    }
    //IMAGEM
    func someImageViewConstraints() {
        someImageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        someImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        someImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
        
        
    }
    //BOTAO
    
    func setup(){
        self.view.addSubview(box)
        box.backgroundColor = .orange
        self.view.addSubview(box)
        button = UIButton()
        //button.center = self.view.center
        button.setTitle("Button", for: UIControl.State.normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        
        button.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside )
        
        box.snp.makeConstraints { (make) -> Void in
            make.center.equalTo(self.view)
            make.centerY.equalTo(800)
            make.size.equalTo(CGSize(width: 250, height: 75))
            
            self.view.addSubview(button)
           
        }
        //NAVBAR
        
        view.backgroundColor = .white
        let superview = self.view
        let navbar = UIView()
        superview!.addSubview(navbar)
        navbar.backgroundColor = UIColor.lightGray
        navbar.snp_makeConstraints { (make) -> Void in
            make.height.equalTo(90)
            make.width.equalTo(superview!)
        }
        //LABEL
        let titleLabel = UILabel()
        navbar.addSubview(titleLabel)
        titleLabel.text = "9999999"
        titleLabel.textColor = UIColor.black
        titleLabel.sizeToFit()
        titleLabel.snp_makeConstraints { (make) -> Void in
            
        }
        
        
    }
    
}
