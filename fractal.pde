//mandelbrot
void setup(){
  size(1000,1000);
  background(0);
  noStroke();
  double x,y,px,py,a,b;
  boolean o;
  for(int k=0;k<1000;k++){
    for(int m=0;m<1000;m++){
      a=(double)k/250.0-2.0;
      b=(double)m/250.0-2.0;
      x=0;
      y=0;
      o=true;
      for(int n=1;n<=250&&o;n++){
        px=x;
        py=y;
        x=px*px-py*py+a;
        y=2.0*px*py+b;
        if(x*x+y*y>4){
          o=false;
          fill(cr(n),cr(n*2),cr(n*3));
          rect(k,m,1,1);
        }
      }
    }
  }
  save("filename.png");
}

float cr(float n){
  return (n%256)*(256-(n%256))/70;
}
