//: [Previous](@previous)
//: # Exercise - Loops and Conditionals
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![sloan-no-grid.png](sloan-no-grid.png "Sloan")
 ![sloan-with-grid.png](sloan-with-grid.png "Sloan")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * iteration (use of loops)
 * conditional (if statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLOR CONSTANTS
let deepOrange = Color(hue: 17, saturation: 100, brightness: 98, alpha: 100)
let lightBlue = Color(hue: 192, saturation: 87, brightness: 94, alpha: 100)
let neonGreen = Color(hue: 123, saturation: 74, brightness: 95, alpha: 100)



canvas.fillColor=deepOrange
canvas.drawRectangle(at: Point(x:0, y:400), width:400, height:200)
for x in stride(from: 0, through: 400, by: 100) {
    canvas.drawRectangle(at: Point(x:x, y:350), width:50, height:50)
}
canvas.fillColor=lightBlue
for x in stride(from: 0, through: 400, by: 100) {
    canvas.drawRectangle(at: Point(x:x, y:0), width:50, height:350)
}
canvas.fillColor=neonGreen
for x in stride(from: 50, through: 400, by: 100) {
    canvas.drawRectangle(at: Point(x:x, y:50), width:50, height:350)
}
canvas.fillColor=deepOrange
for x in stride(from: 50, through: 400, by: 100) {
    canvas.drawRectangle(at: Point(x:x, y:0), width:50, height:50)
}


for m in 1...7 {
    canvas.drawLine(from: Point(x:m*50, y:0), to: Point(x:m*50, y: 600))
}

for n in 1...11 {
    canvas.drawLine(from: Point(x:0,y:n*50), to: Point(x:400,y:n*50))
}
// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

