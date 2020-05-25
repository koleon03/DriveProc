Car car;
boolean sPressed;
boolean wPressed;
boolean aPressed;
boolean dPressed;
boolean a = true;
void setup() {
    background(0);
    fullScreen(P2D);
    car = new Car(0,0,20,255,0,0, 0.01);
}

void draw() {
    background(0);
    if(wPressed == true && aPressed != true && dPressed != true) car.drive(true, false, 'w');
    else if(aPressed == true && wPressed != true && sPressed != true) car.drive(true, false, 'a');
    else if(sPressed == true && aPressed != true && dPressed != true) car.drive(true, false, 's');
    else if(dPressed == true && wPressed != true && sPressed != true) car.drive(true, false, 'd');
    else if(wPressed == true && aPressed == true){
        if(a == true) car.drive(true, false, 'w');
        else car.drive(true, false, 'a');
        a = !a;
    }
    else if(wPressed == true && dPressed == true){
         if(a == true) car.drive(true, false, 'w');
        else car.drive(true, false, 'd');
        a = !a;
    }
    else if(sPressed == true && aPressed == true){
         if(a == true) car.drive(true, false, 's');
        else car.drive(true, false, 'a');
        a = !a;
    }
    else if (sPressed == true && dPressed == true) {
         if(a == true) car.drive(true, false, 's');
        else car.drive(true, false, 'd');
        a = !a;
    }
    else car.drive(false,true, 'w');
}

void keyPressed() {
    if(key == 's') sPressed = true;
    if(key == 'w') wPressed = true;
    if(key == 'a') aPressed = true;
    if(key == 'd') dPressed = true;
}

void keyReleased() {
    if(key == 's') sPressed = false;
    if(key == 'w') wPressed = false;
    if(key == 'a') aPressed = false;
    if(key == 'd') dPressed = false;
}
