import static javax.swing.JOptionPane.*;

int timeLimit = 100*60;
int countDown;
boolean timerExec = false;

void setup(){
  size(400, 300);
  textAlign(CENTER);
  textSize(50);
  //textFont(50);
  //showMessageDialog(null, "test text");
}

void draw(){
  int timerX = width/2;
  int timerY = height/2;
  
  background(255);
  
  int ms = int(millis()/1000);
  
  countDown = timeLimit - ms;
  
  fill(0);
  if(60*60 - 1< countDown && countDown < 60*60*10 && ((countDown - 60*60*(countDown/(60*60)))/(60)) < 10 && countDown%60 < 10){
    //1時間以上10時間以下 かつ 0分以上10分未満 かつ 0秒 < n < 10秒
    text("0" + int(countDown/(60*60)) + ":0" + int((countDown - 60*60*(countDown/(60*60)))/(60)) + ":0" + int(countDown%60), timerX, timerY);
  }else if(60*60 - 1< countDown && ((countDown - 60*60*(countDown/(60*60)))/(60)) < 10 && countDown < 60*60*10){
    //1時間以上10時間以下 かつ 0分以上10分未満 かつ 9秒 < n < 60秒
    text("0" + int(countDown/(60*60)) + ":0" + int((countDown - 60*60*(countDown/(60*60)))/(60)) + ":" + int(countDown%60), timerX, timerY);
  }else if(60*60 - 1< countDown && countDown < 60*60*10 && countDown%60 < 10){
    //1時間以上10時間以下 かつ 10分以上60分未満 かつ 0秒 < n < 10秒
    text("0" + int(countDown/(60*60)) + ":" + int((countDown - 60*60*(countDown/(60*60)))/(60)) + ":0" + int(countDown%60), timerX, timerY);
  }else if(60*60 - 1< countDown && countDown < 60*60*10){
    //1時間以上10時間以下 かつ 10分以上60分未満 かつ 9秒 < n < 60秒
    text("0" + int(countDown/(60*60)) + ":" + int((countDown - 60*60*(countDown/(60*60)))/(60)) + ":" + int(countDown%60), timerX, timerY);
  }else if(60*10 - 1 < countDown && countDown < 60*60 && countDown%60 < 10){
    //10分以上60分未満 かつ 0秒 < n < 10秒
    text(int(countDown/60) + ":0" + int(countDown%60), timerX, timerY);
  }else if(60*10 - 1 < countDown && countDown < 60*60 ){
    //10分以上60分未満 かつ 9秒 < n < 60秒
    text(int(countDown/60) + ":" + int(countDown%60), timerX, timerY);
  }else if(59 < countDown && countDown < 60*10 && countDown%60 < 10){
    //1分 < n < 10分 かつ 0秒 < n < 10秒
    text("0" + int(countDown/60) + ":0" + int(countDown%60), timerX, timerY);
  }else if(59 < countDown && countDown < 60*10){
    //1分 < n < 10分 かつ　9秒 < n < 60秒
    text("0" + int(countDown/60) + ":" + int(countDown%60), timerX, timerY);
  }else if(9 < countDown && countDown < 60){
    //9秒 < n < 60秒
    text("00:" + countDown, timerX, timerY);
  }else if(0 < countDown && countDown < 10){
    //0秒 < n < 10秒
    text("00:0" + countDown, timerX, timerY);
  }else{
    text("00:00", timerX, timerY);
    showMessageDialog(null, "TIME UP!", "Alert", ERROR_MESSAGE);
    noLoop();
  }
}