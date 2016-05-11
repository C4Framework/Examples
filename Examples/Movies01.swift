//
//  Movies01.swift
//  C4Examples
//
//  Created by Oliver Andrews on 2015-09-08.
//  Copyright © 2015 Slant. All rights reserved.
//

import C4

class Movies01: CanvasController {
    override func setup() {
        //create a movie and play it automatically
        let movie = Movie("halo.mp4")!
        movie.height = canvas.height
        movie.center = canvas.center
        movie.play()
        canvas.add(movie)

        canvas.addTapGestureRecognizer { locations, center, state in
            movie.playing ? movie.pause() : movie.play()
        }
    }
}