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
        // Do any additional setup after loading the view.
    }
    
    
    func bind() {
        viewModel.isValid
            .sink { [weak self] isValid in
                if isValid {
                    self?.errorLabel.isHidden =
                } else
                    self?.errorLabel.isHidden =
                    self?.errorLabel.text =
            }
        
        
    }


}

