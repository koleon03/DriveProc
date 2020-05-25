class Car{

    float startX;
    float startY;
    float speed;
    float currentSpeed = 0;
    int colorR;
    int colorG;
    int colorB;
    float acceleration;


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
}