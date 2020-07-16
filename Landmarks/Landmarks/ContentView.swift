//
//  ContentView.swift
//  Landmarks
//
//  Created by Karan Sekhri on 7/15/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 # Chapter 1: SwiftUI Essentials

 ## A. Creating and Combining Views
 ### Section 1: Create a New Project and Explore the Canvas
 * If the canvas isn’t visible, select Editor > Editor and Canvas to show it.
 * By default, SwiftUI view files declare two structures.
     1. The first structure conforms to the View protocol and describes the view’s content and layout.
     
         ```
         struct ContentView: View {
             var body: some View {
                 Text("Hello, Karan!").padding()
             }
         }
        ```
     2. The second structure declares a preview for that view.

         ```
         struct ContentView_Previews: PreviewProvider {
             static var previews: some View {
                 ContentView()
             }
         }
         ```
  
 ### Section 2: Customize the Text View
 * You can customize a view’s display by changing your code, or by using the inspector to discover what’s available and to help you write code.
     * In the preview, Command-click the greeting to bring up the structured editing popover, and choose Inspect.
     * Your code is always the source of truth for the view. When you use the inspector to change or remove a modifier, Xcode updates your code immediately to match.
 * To customize a SwiftUI view, you call methods called modifiers. Modifiers wrap a view to change its display or other properties. Each modifier returns a new view, so it’s common to chain multiple modifiers, stacked vertically.

 ### Section 3: Combine Views Using Stacks
 * When creating a SwiftUI view, you describe its content, layout, and behavior in the view’s body property; however, the body property only returns a single view.
 * You can combine and embed multiple views in stacks, which group views together horizontally, vertically, or back-to-front.
 * In this section, you’ll use a vertical stack to place the title above a horizontal stack that contains details about the park.
     * Create VStack
         1. Command-click the text view’s initializer to show the structured editing popover, and then choose Embed in VStack.
         2. Open the library by clicking the plus button (+) at the top-right of the Xcode window, and then drag a Text view to the place in your code immediately after the “Turtle Rock” text view.
         3. Edit the VStack initializer to align the views by their leading edges. (alignment: .leading)
     * Create HStack
         1. In the canvas, Command-click Joshua Tree National Park, and choose Embed in HStack.
         2. Add a new text view after the location
         3. To direct the layout to use the full width of the device, separate the park and the state by adding a Spacer to the horizontal stack holding the two text views.
     * Spacer: A spacer expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.

 */
