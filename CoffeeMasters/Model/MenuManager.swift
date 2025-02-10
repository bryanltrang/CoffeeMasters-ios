//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Bryan Trang on 2/8/25.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
    @Published var menu: [Category] = []
    
    init(){
        refreshItemsFromNetwork()
    }
    
    // this function uses Alamofire to make a request to an api to get the data and set it to menu which gets passed into the app for use as an environment object. init() ensures that when this class is called. The api request grabs data.
    func refreshItemsFromNetwork()  {
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
        // expect request to return an array of categories
            .responseDecodable(of: [Category].self) { response in
                if let menuFromNetwork = response.value {
                    self.menu = menuFromNetwork
                }
            }
    }
}
