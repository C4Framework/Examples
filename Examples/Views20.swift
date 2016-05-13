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

class Views20: CanvasController {
    override func setup() {
        let img = Image("chop")!
        img.constrainsProportions = true
        img.height = canvas.height
        img.center = canvas.center
        canvas.add(img)

        let mask = Rectangle(frame: Rect(0, 0, img.height-20, 50))
        let submask = Rectangle(frame: Rect(0, 0, 50, img.height-20))
        submask.center = mask.center
        mask.add(submask)
        mask.center = img.bounds.center
        img.mask = mask

        let a = ViewAnimation(duration: 1.7) {
            mask.transform.rotate(-M_PI)
        }
        let b = ViewAnimation(duration: 2.3) {
            submask.transform.rotate(M_PI_2)
        }
        a.repeats = true
        b.repeats = true
        b.autoreverses = true

        a.animate()
        b.animate()
    }
}
