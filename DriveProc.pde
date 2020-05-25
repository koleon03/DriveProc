Car car;
boolean sPressed;
boolean wPressed;
boolean aPressed;
boolean dPressed;
boolean a = true;
char lastDirection;
void setup() {
    background(0);
    fullScreen(P2D);
    float speed = random(10, 40);
    float acceleration = random(0.5, 1.5);
    car = new Car(0,0,speed,255,0,0, acceleration);
}

void draw() {
    background(0);
    if(wPressed == true && aPressed != true && dPressed != true){ car.drive(true, false, 'w'); lastDirection = 'w';}
    else if(aPressed == true && wPressed != true && sPressed != true) {car.drive(true, false, 'a'); lastDirection = 'a';}
    else if(sPressed == true && aPressed != true && dPressed != true) {car.drive(true, false, 's'); lastDirection = 's';}
    else if(dPressed == true && wPressed != true && sPressed != true) {car.drive(true, false, 'd'); lastDirection = 'd';}
    else if(wPressed == true && aPressed == true){
        if(a == true) car.drive(true, false, 'w');
        else car.drive(true, false, 'a');
        a = !a;
        lastDirection = 'e';
    }
    else if(wPressed == true && dPressed == true){
         if(a == true) car.drive(true, false, 'w');
        else car.drive(true, false, 'd');
        a = !a;
        lastDirection = 'r';
    }
    else if(sPressed == true && aPressed == true){
         if(a == true) car.drive(true, false, 's');
        else car.drive(true, false, 'a');
        a = !a;
        lastDirection = 't';
    }
    else if (sPressed == true && dPressed == true) {
         if(a == true) car.drive(true, false, 's');
        else car.drive(true, false, 'd');
        a = !a;
        lastDirection = 'z';
    }
    else{ 
        if(!car.getIsDriving()){
            car.drive(false,true, 'w');
        }
        else{
            car.brake(lastDirection);
        }
}
}

void keyPressed() {
    if(key == 's') {sPressed = true; car.setIsDriving(true);}
    if(key == 'w') {wPressed = true; car.setIsDriving(true);}
    if(key == 'a') {aPressed = true; car.setIsDriving(true);}
    if(key == 'd') {dPressed = true; car.setIsDriving(true);}
}

void keyReleased() {
    if(key == 's') {sPressed = false; }
    if(key == 'w') {wPressed = false; }
    if(key == 'a') {aPressed = false; }
    if(key == 'd') {dPressed = false; }
}
