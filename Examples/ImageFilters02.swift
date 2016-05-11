//
//  ImageFilters02.swift
//  C4Examples
//
//  Created by Oliver Andrews on 2015-09-10.
//  Copyright © 2015 Slant. All rights reserved.
//

import C4

class ImageFilters02: CanvasController {
    override func setup() {
        let image = Image("chop")!
        image.constrainsProportions = true
        image.width = canvas.width
        image.center = canvas.center
        canvas.add(image)

        let filter = Bloom()
        image.apply(filter)
    }
}