//
//  File.swift
//  
//
//  Created by Vlad Popa on 27.10.2021.
//

import Foundation
import UIKit

public class MainView: UIView {
    private lazy var mainView: UIView = setupMainView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

extension MainView {
    private func setupMainView() -> UIView {
        let mainView = UIView()
        mainView.backgroundColor = .red
        mainView.frame.size.width = 100
        mainView.frame.size.height = 100
        addSubview(mainView)
        
        return mainView
    }
}

extension MainView {
    private func setupConstraints() {
        setupConstraintsForMainView()
    }
    
    private func setupConstraintsForMainView() {
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        mainView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
