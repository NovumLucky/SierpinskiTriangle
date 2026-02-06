boolean rgbOn = false;
public void setup()
{
    size(600, 600);
    background(255);
    noFill();
}
public void draw()
{
    background(0);
    stroke(255);
    sierpinski(100, 500, 400);
    if (rgbOn == true)
    {
        strokeWeight(2);
        stroke(255, 0, 0);
        sierpinski(102, 498, 400);
        stroke(0, 255, 0);
        sierpinski(98, 498, 400);
        stroke(0, 0, 255);
        sierpinski(100, 502, 400);
        strokeWeight(1);
    }
}
public void mousePressed()
{
    rgbOn = !rgbOn;
}
public void sierpinski(int x, int y, int len) 
{
    if (len < 20)
    {
        triangle(x, y, x + len, y, x + len / 2, y - len);
        return;
    }
    sierpinski(x, y, len / 2);
    sierpinski(x + len / 2, y, len / 2);
    sierpinski(x + len / 4, y - len / 2, len / 2);
}
