import SwiftUI

struct TitleViewSwiftUI: View {
    let countryName: String
    let capitalName: String
    let rate: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            // Ligne 1 : Nom du pays + étoiles
            HStack(alignment: .center) {
                Text(countryName)
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(.black)
                
                Spacer()
                
                // Étoiles alignées à droite
                HStack(spacing: 3) {
                    ForEach(0..<rate, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.orange)
                    }
                }
            }
            
            // Ligne 2 : Capitale
            Text(capitalName)
                .font(.system(size: 18, weight: .regular))
                .foregroundColor(.gray)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
    }
}

#Preview {
    TitleViewSwiftUI(countryName: "Vietnam", capitalName: "Hanoi", rate: 5)
        .frame(height: 80)
        .border(Color.red)
}
