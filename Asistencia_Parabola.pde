float y;
void setup(){
size(600,600);
}
void draw(){
  background(#030202);//Fondo negro
  strokeWeight(2);//Grueso de la linea
  stroke(#D3D1D1);//Color blanco de la linea
  /*Plano cartesiano*/
  line(0,300,600,300);//Eje de coordenada en X
  line(300,0,300,600);//Eje de coordenada en Y
  
  for(float x = -300; x<= 300; x+=0.1){
    /*Formula de la funcion cuadratica*/
    y = (2 * pow(x,2) + 4 * x +(-1));
    /*El resultado del grafico de la parabola tuvo un problema y fue su estiramiento asi que lo arregle con un escalar para que sea mas notorio la parabola*/
    float escalamiento = 0.01;
    y *= escalamiento;
    stroke(#FA0008);//Puntos de color rojo
    point(x + 300, 300 - y);//Se va a dibujar varios puntos pero dirigiendose hacia la derecha
    point(-x + 300, 300 - y);//Lo mismo que los puntos anteriores dibujado pero hacia la izquierda
  }
}
