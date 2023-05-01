//
//  ViewModel.swift
//  Iteams
//
//  Created by Eman on 30/01/2023.
//

import Foundation
class ViewModel {
    var bindResultToViewController : (()->()) = {}
    var result : [Item] = []
    {
        didSet
        {bindResultToViewController()}
    }
 func   getItems()
    {
        networkF.fetchResult{ myresult in
       
            self.result = myresult!.items
        }
    }
    
    
}

