PImage [] img = new PImage [15] ;
int [] randoNums = new int [61] ;
int counter = 0 ;

void setup() {
 size(1000,600) ; 
 background(0) ;
 for(int i = 0 ; i < 15 ; i++) {
    img[i] = loadImage(i + ".jpg") ; 
 }
 for(int j = 0 ; j < 61 ; j++) {
    randoNums[j] = int(random(0,14)) ;
    println(randoNums[j]) ;
 }
 //for(int x = 0 ; x < 60 ; x++) {
 //  println(randoNums[x]) ;
 //}
}

void draw() {
  if(counter <= 60) {
    for(int i = 0 ; i < 6 ; i++) {
       for(int j = 0 ; j < 10 ; j++) {
         image(img[randoNums[(j+1)*(i+1)]], j*100, i*100) ;
       }
    }
  }
 
}