Car car;
void setup() {
    background(0);
    fullScreen(P2D);
    car = new Car(0,0,0,255,0,0);
}

void draw() {
    car.drive(0.3,0.3);
}

void keyPressed() {
    
}
