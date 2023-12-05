//
//  Tela6.swift
//  CalmSpaceFinal
//
//  Created by Student09 on 22/08/23.
//

import SwiftUI
import YouTubePlayerKit

struct Tela6: View {
    @StateObject var viewModel = ViewModelVideo()

    var body: some View {
        VStack {
            
            if let Video = viewModel.chars.first(where: {$0._id == "091fe4d91379ee0a306388a8bf7420ed"}) {
                YouTubePlayerView(YouTubePlayer(stringLiteral: Video.video!))
                    .frame(width:300 ,height: 270)
                
                Text(Video.descricao!)
                    .font(.system(size: 14))
                    .padding()
                    .multilineTextAlignment(.center)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.gray))
        .foregroundStyle(Color(.cyan))
        .onAppear(){
            viewModel.fetch()
                
        }
    }
}

struct Tela6_Previews: PreviewProvider {
    static var previews: some View {
        Tela6()
    }
}
