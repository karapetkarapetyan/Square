//
//  ViewController.swift
//  Square
//
//  Created by Karapet on 26.04.22.
//

import UIKit

    
class ViewController: UIViewController {
  var SquareView: UIView!
    var SquareView2: UIView!
    var SquareView3: UIView!
  override func viewDidLoad() {
    super.viewDidLoad()
    initSquareView()
    initSquareView2()
    initSquareView3()
    constructHierarchy()
    activateConstraints()
  }
  
  }

extension ViewController {
    
    
    private func initSquareView() {
        SquareView = UIView()
        SquareView.backgroundColor = .orange
        SquareView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initSquareView2() {
        SquareView2 = UIView()
        SquareView2.backgroundColor = .orange
        SquareView2.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func initSquareView3() {
        SquareView3 = UIView()
        SquareView3.backgroundColor = .orange
        SquareView3.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    
    private func constructHierarchy() {
        view.addSubview(SquareView)
        view.addSubview(SquareView2)
        view.addSubview(SquareView3)
    }
    
    private func activateConstraints() {
        NSLayoutConstraint.activate([
            SquareView.heightAnchor.constraint(equalToConstant: 50),
            SquareView.widthAnchor.constraint(equalToConstant: 50),
            SquareView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            SquareView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            
            
                SquareView2.heightAnchor.constraint(equalToConstant: 50),
                SquareView2.widthAnchor.constraint(equalToConstant: 50),
                SquareView2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            SquareView2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 90),
            
            
            SquareView3.heightAnchor.constraint(equalToConstant: 50),
            SquareView3.widthAnchor.constraint(equalToConstant: 50),
            SquareView3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            SquareView3.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 155)
        ])
        
    }
    
}

