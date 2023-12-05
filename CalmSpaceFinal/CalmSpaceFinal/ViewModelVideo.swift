//
//  ViewModelVideo.swift
//  CalmSpaceFinal
//
//  Created by Student09 on 22/08/23.
//

import Foundation

class ViewModelVideo : ObservableObject {
    
    @Published var chars : [Data] = []
    
    func fetch () {
        guard let url = URL(string: "http://127.0.0.1:1880/CalmSpaceGET") else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _,error in
            guard let data = data, error == nil else{

                return
            }
            do {
                let parsed = try JSONDecoder().decode([Data].self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed
                    //self?.chars = Array(parsed.data![0 ..< 50])
                    
                    
                }
            }catch {
                print(error)
            }
            
        }
        task.resume()
        
    }
}
