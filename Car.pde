class Car{

    float startX;
    float startY;
    float speed;
    int colorR;
    int colorG;
    int colorB;


    public Car(float startX, float startY, float speed, int colorR, int colorG, int colorB){
        this.startX = startX;
        this.startY = startY;
        this.speed = speed;
        this.colorR = colorR;
        this.colorG = colorG;
        this.colorB = colorB;
        drive(0,0);
    }

    public void drive(float changeX, float changeY){
        fill(colorR,colorG,colorB);
        float newX = startX + changeX;
        float newY = startY + changeY;
        rect(newX, newY, 100, 100);
        startX = newX;
        startY = newY;
    }
}