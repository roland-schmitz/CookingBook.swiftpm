import SwiftUI

struct ContentView: View {
    @State var recipes = sampleRecipeCollection
    @State var categorySelection: String?
    @State var recipeSelection: String?

    var body: some View {
        VStack {
            RecipeCollectionView(collection: recipes, categorySelection: $categorySelection, recipeSelection: $recipeSelection)
            ShortcutButtons(categorySelection: $categorySelection, recipeSelection: $recipeSelection)
        }
    }
    
}
