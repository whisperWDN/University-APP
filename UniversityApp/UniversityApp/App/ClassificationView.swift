//
//  ClassificationView.swift
//  UniversityApp
//
//  Created by admin on 2022/5/25.
//

import SwiftUI

struct ClassificationView: View {
    @State private var location:String = "华东"
    let regions :[Region]=Bundle.main.decode("regions.json")
    let universities :[University]=Bundle.main.decode("universities.json")
    var body: some View {
        NavigationView{
            ScrollView{
                HStack{
                    ForEach(regions){
                        region in
                        
                        Button(action: {
                            location = region.name
                        }, label: {
                            if location == region.name{
                                Text(region.name)
                                    .foregroundColor(.yellow)
                            }else{
                                Text(region.name)
                                    .foregroundColor(.gray)
                            }

                        })
                        
                    }
                }
                ForEach(universities) { university in
                    if university.region == location {
                        NavigationLink(destination: UniversityDetailView(university: university)) {
                          UniversityListItemView(university: university)
                        } //: Link
                    }
  
                } //: Loop
            }
            .navigationBarHidden(true)

        }//NavigationView
        


        

    }
    
}

struct ClassificationView_Previews: PreviewProvider {
    static var previews: some View {
        ClassificationView()
    }
}
