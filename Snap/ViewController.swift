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
        
        
        //BOTAO
        self.view.addSubview(box)
        box.backgroundColor = .orange
        
        
        box.snp.makeConstraints { (make) -> Void in
            make.center.equalTo(self.view)
            make.centerY.equalTo(800)
            make.size.equalTo(CGSize(width: 250, height: 75))
            
            
        }
        
    }
    //IMAGEM
    func someImageViewConstraints() {
        someImageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        someImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        someImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
        
        
    }
    //NAVIGATION
    func setup(){
        
        
        view.backgroundColor = .white
        let superview = self.view
        let navbar = UIView()
        superview!.addSubview(navbar)
        navbar.backgroundColor = UIColor.lightGray
        navbar.snp_makeConstraints { (make) -> Void in
            make.height.equalTo(90)
            make.width.equalTo(superview!)
        }
        let titleLabel = UILabel()
        navbar.addSubview(titleLabel)
        titleLabel.text = "9999999"
        titleLabel.textColor = UIColor.black
        titleLabel.sizeToFit()
        titleLabel.snp_makeConstraints { (make) -> Void in
            
        }
        
        
    }
    
    
}
