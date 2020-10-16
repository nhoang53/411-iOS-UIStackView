//
//  ViewController.swift
//  ViewProgramming
//
//  Created by Ngan Hoang on 10/13/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 1. UILable to display
        // 2. UITextField to enter data
        // 3. UIButton to trigger action
        
        
        // frame: size, position to display(x, y, width, height)
        //var lbl = UILabel(frame: CGRect(x: 100, y: 100, width: 300, height: 50))
        // 4. Intrinsic Content Size (not fix rectangle size)
        
        let lbl1 = UILabel()
        lbl1.text = "Nested 1"
        lbl1.textColor = UIColor.blue
        lbl1.backgroundColor = UIColor.systemGray
        lbl1.textAlignment = .center
        
        let lbl2 = UILabel()
        lbl2.text = "Nested 2"
        lbl2.textColor = UIColor.red
        lbl2.backgroundColor = UIColor.cyan
        lbl2.textAlignment = .center
        
        let nestedStV = UIStackView()
        nestedStV.axis = .horizontal
        nestedStV.distribution = .fillEqually
        nestedStV.addArrangedSubview(lbl1)
        nestedStV.addArrangedSubview(lbl2)
        nestedStV.spacing = 10
        
        let lbl = UILabel()     // don't design the frame, but design the lable
        lbl.text = "First name"
        lbl.backgroundColor = UIColor.yellow
        lbl.textColor = UIColor.red
        lbl.textAlignment = .center
        lbl.font = UIFont(name: "Georgia-Bold", size: 36)
//        lbl.frame.origin.x = view.frame.width/5
//        lbl.frame.origin.y = view.frame.height/4
        lbl.sizeToFit()     // default origin (location) x=0, y=0
        
//       ***** UIStackView: easy to create layout *****
        let stackView = UIStackView()
//        stackView.axis = .horizontal
        stackView.axis = .vertical
        stackView.distribution = .fillEqually   // this make 2 box have the same horizontal size
        
//        UITextField
        let txtField = UITextField()
        txtField.text = "George Sampson"
        txtField.textAlignment = .center
        txtField.backgroundColor = UIColor.green
//        txtField.frame.origin.x = lbl.frame.origin.x + lbl.frame.width
//        txtField.frame.origin.y = lbl.frame.origin.y
        txtField.sizeToFit()
//        lbl.frame.size.height = txtField.frame.height
        
//        Display view
        stackView.layoutMargins = UIEdgeInsets(top:20, left: 20, bottom: 20, right: 20)
        stackView.isLayoutMarginsRelativeArrangement = true
        
        stackView.addArrangedSubview(nestedStV) // nested UIStackView
        stackView.addArrangedSubview(lbl)
        stackView.addArrangedSubview(txtField)
        stackView.spacing = 10
        
        view.addSubview(stackView)
        
//        UIStackView Constraints: leading-left, trailing-right
        stackView.translatesAutoresizingMaskIntoConstraints = false
        let topCnt1 = stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        let leadingCnt2 = stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)
        let bottomCnt3 = stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        let trailingCnt4 = stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        
        topCnt1.isActive = true
        leadingCnt2.isActive = true
        bottomCnt3.isActive = true
        trailingCnt4.isActive = true
        
//        view.addSubview(lbl)
//        view.addSubview(txtField)
        
        // *** Auto layout, constraints = force, limit ***
        /*
        lbl.translatesAutoresizingMaskIntoConstraints =  false
        txtField.translatesAutoresizingMaskIntoConstraints = false
        
        // set priority on horizontal view, which one can stress out
        txtField.setContentHuggingPriority(.defaultLow, for: .horizontal)
        lbl.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        
        // set compression
        txtField.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        lbl.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        
        // Anchors - top, leading, trailing, bottom
        let lpCnt1 = lbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        let lpCnt2 = lbl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        lpCnt1.isActive = true
        lpCnt2.isActive = true
        
//        let ltCnt1 = txtField.leadingAnchor.constraint(equalTo: lbl.trailingAnchor)
        // space 15 pixels on left & right on lable
        let ltCnt1 = txtField.leadingAnchor.constraint(equalTo: lbl.trailingAnchor, constant: 15)
        let ltCnt2 = txtField.bottomAnchor.constraint(equalTo: lbl.bottomAnchor)
        ltCnt1.isActive = true
        ltCnt2.isActive = true
        
        // tralingAnchor will match the width of screen on the Right side
        let tpCnt1 = txtField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        tpCnt1.isActive = true
        
        // set the high of txtField = label
        let ltCnt3 = txtField.heightAnchor.constraint(equalTo: lbl.heightAnchor)
        ltCnt3.isActive = true
        */
    }


}

