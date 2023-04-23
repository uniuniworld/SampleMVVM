//
//  ViewController.swift
//  SampleMVVM
//
//  Created by Takahiro Kirifu on 2023/04/17.
//

import UIKit
import Combine

final class ViewController: UIViewController {
    
    private let viewModel = ViewModel()
    private var cancellables = Set<AnyCancellable>()
    
    @IBOutlet weak var errorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind()
    }
    
    @IBAction func tapButton(_ sender: Any) {
        viewModel.tapButton()
    }
    
    func bind() {
        viewModel.isValid
            .sink { [weak self] isValid in
                self?.errorLabel.text = "ssss"
                self?.errorLabel.isHidden = isValid
                print(isValid)
//                if isValid {
//                    self?.errorLabel.isHidden = isValid
//                } else {
//                    self?.errorLabel.isHidden = !isValid
//                }
            }
            .store(in: &cancellables)
    }
}
