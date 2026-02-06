import SwiftUI

struct ListView: View {
    let regions: [Region] = Service().load("Source.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(regions, id: \.name) { region in
                    Section(header: Text(region.name)) {
                        ForEach(region.countries, id: \.name) { country in
                            NavigationLink(destination: DetailView(country: country)) {
                                CountryRowView(country: country)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Liste de voyages")
        }
    }
}

#Preview {
    ListView()
}
