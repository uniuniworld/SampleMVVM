//
//  ViewModel.swift
//  SampleMVVM
//
//  Created by Takahiro Kirifu on 2023/04/18.
//

import Foundation
import Combine

protocol ViewModelInput {
}

protocol ViewModelOutput {
}


final class ViewModel: ViewModelInput, ViewModelOutput {
    
    private var cancellables = Set<AnyCancellable>()
    
    // Input
    let inputText = PassthroughSubject<String,  Never>()
    // Output
    let isValid = PassthroughSubject<Bool, Never>()
    
    private var errorText: String?
    
}
