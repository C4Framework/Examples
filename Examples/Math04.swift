// Copyright © 2016 C4
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions: The above copyright
// notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

import C4
import UIKit

class Math04: CanvasController {
    override func setup() {
        let example = MathComparePaths(frame: canvas.frame) {
            var points = [Point]()
            var x = -10.0
            repeat {
                let y = atan(x)
                let mx = map(x, min: -10, max: 10, toMin: 0, toMax: 1)
                let my = map(y, min: -M_PI_2, max: M_PI_2, toMin: -1, toMax: 1) * -1.0
                points.append(Point(mx, my))
                x += 0.02
            } while x < 10.0
            return (points, points)
        }
        canvas.add(example)
    }
}
