class Car{

    float startX;
    float startY;
    float speed;
    float currentSpeed = 0;
    int colorR;
    int colorG;
    int colorB;
    float acceleration;
    boolean isDriving = false;
    boolean a = true;


    public Car(float startX, float startY, float speed, int colorR, int colorG, int colorB, float acceleration){
        this.startX = startX;
        this.startY = startY;
        this.speed = speed;
        this.colorR = colorR;
        this.colorG = colorG;
        this.colorB = colorB;
        this.acceleration = acceleration;
    }

    public void drive(boolean acc, boolean still, char pressed){
        fill(colorR,colorG,colorB);
        if(acc == true && still == false){
            if(currentSpeed < speed){
                currentSpeed = currentSpeed + acceleration;
                if(pressed == 'w'){
                    float newX = startX;
                    float newY = startY - currentSpeed;
                    rect(newX,newY, 100, 100);
                    startX = newX;
                    startY = newY;
                }

                if(pressed == 'a'){
                    float newX = startX - currentSpeed;
                    float newY = startY;
                    rect(newX,newY, 100, 100);
                    startX = newX;
                    startY = newY;
                }

                if(pressed == 's'){
                    float newX = startX;
                    float newY = startY + currentSpeed;
                    rect(newX,newY, 100, 100);
                    startX = newX;
                    startY = newY;
                }

                if(pressed == 'd'){
                    float newX = startX + currentSpeed;
                    float newY = startY;
                    rect(newX,newY, 100, 100);
                    startX = newX;
                    startY = newY;
                }

            }
            else{

                if(pressed == 'w'){
                    float newX = startX;
                    float newY = startY - currentSpeed;
                    rect(newX,newY, 100, 100);
                    startX = newX;
                    startY = newY;
                }

                if(pressed == 'a'){
                    float newX = startX - currentSpeed;
                    float newY = startY;
                    rect(newX,newY, 100, 100);
                    startX = newX;
                    startY = newY;
                }

                if(pressed == 's'){
                    float newX = startX;
                    float newY = startY + currentSpeed;
                    rect(newX,newY, 100, 100);
                    startX = newX;
                    startY = newY;
                }

                if(pressed == 'd'){
                    float newX = startX + currentSpeed;
                    float newY = startY;
                    rect(newX,newY, 100, 100);
                    startX = newX;
                    startY = newY;
                }

            }
        }

        if(still == true){
            rect(startX, startY, 100, 100);
        }
        
    }

    public void setIsDriving(boolean isDriving){
        this.isDriving = isDriving;
    }

    public void brake(char lastDirection){
        if(currentSpeed > 0){
            switch(lastDirection){
                case 'w':
                    currentSpeed = currentSpeed - acceleration;
                    float newX = startX;
                    float newY = startY - currentSpeed;
                    rect(newX,newY,100,100);
                    startX = newX;
                    startY = newY;
                    break;
                case 'a':
                    currentSpeed = currentSpeed - acceleration;
                    float newX1 = startX - currentSpeed;
                    float newY1 = startY;
                    rect(newX1,newY1,100,100);
                    startX = newX1;
                    startY = newY1;
                    break;
                case 's':
                    currentSpeed = currentSpeed - acceleration;
                    float newX2 = startX;
                    float newY2 = startY + currentSpeed;
                    rect(newX2,newY2,100,100);
                    startX = newX2;
                    startY = newY2;
                    break;
                case 'd':
                    currentSpeed = currentSpeed - acceleration;
                    float newX22 = startX + currentSpeed;
                    float newY22 = startY;
                    rect(newX22,newY22,100,100);
                    startX = newX22;
                    startY = newY22;
                    break;
                case 'e':
                    currentSpeed = currentSpeed - acceleration;
                    if(a == true){
                        float newX3 = startX;
                        float newY3 = startY - currentSpeed;
                        rect(newX3,newY3,100,100);
                        startX = newX3;
                        startY = newY3;
                    }
                    else {
                        float newX4 = startX - currentSpeed;
                        float newY4 = startY;
                        rect(newX4,newY4,100,100);
                        startX = newX4;
                        startY = newY4;
                    }
                    break;
                case 'r':
                    currentSpeed = currentSpeed - acceleration;
                    if(a == true){
                        float newX5 = startX;
                        float newY5 = startY - currentSpeed;
                        rect(newX5,newY5,100,100);
                        startX = newX5;
                        startY = newY5;
                    }
                    else {
                        float newX6 = startX + currentSpeed;
                        float newY6 = startY;
                        rect(newX6,newY6,100,100);
                        startX = newX6;
                        startY = newY6;
                    }
                    break;
                case 't':
                    currentSpeed = currentSpeed - acceleration;
                    if(a == true){
                        float newX7 = startX;
                        float newY7 = startY + currentSpeed;
                        rect(newX7,newY7,100,100);
                        startX = newX7;
                        startY = newY7;
                    }
                    else {
                        float newX8 = startX - currentSpeed;
                        float newY8 = startY;
                        rect(newX8,newY8,100,100);
                        startX = newX8;
                        startY = newY8;
                    }
                    break;
                case 'z':
                    currentSpeed = currentSpeed - acceleration;
                    if(a == true){
                        float newX9 = startX;
                        float newY9 = startY + currentSpeed;
                        rect(newX9,newY9,100,100);
                        startX = newX9;
                        startY = newY9;
                    }
                    else {
                        float newX0 = startX + currentSpeed;
                        float newY0 = startY;
                        rect(newX0,newY0,100,100);
                        startX = newX0;
                        startY = newY0;
                    }
                    break;
            }
        }

        else{
            isDriving = false;
        }
    }

    boolean getIsDriving(){
        return this.isDriving;
    }
}