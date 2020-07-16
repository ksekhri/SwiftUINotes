//
//  CircleImage.swift
//  Landmarks
//
//  Created by Karan Sekhri on 7/15/20.
//

/*
 ### Section 4: Create a Custom Image View
 * Create a custom view that applies a mask, border, and drop shadow to the image
     1. Add an image to the project’s asset catalog: drag it to the asset catalog editor
     2. Create a custom view: Create a new SwiftUI view for your custom image view. Choose File > New > File to open the template selector again. In the User Interface section, select SwiftUI View and click Next. Name the file CircleImage.swift and click Create.
     3. Apply a mask, border, and drop shadow to an image
         1. Add Image(_:) initializer
         2. Add a call to clipShape(Circle()) to apply the circular clipping shape to the image.
             * The Circle type is a shape that you can use as a mask, or as a view by giving the circle a stroke or fill.
         3. Create another circle with a gray stroke (later white), and then add it as an overlay to give the image a border.
         4. Add a shadow with a 10 point radius.
 */

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
