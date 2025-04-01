//Programación orientada a objetos - OPP

//Ventajas del OOPS: Reutilizar codigo; Encontrar los problemas en el codigo mas rapido; Codigo mas seguro; Código mas facil de mantener
//Conceptos: Clase & Objeto
// Objeto: Es la idea (Clase: es la plantilla del objeto) o El objeto es la instancia de la clase, osea que permite crear objetos a partir de esa plantilla
// Al progrmar con objetos, las funciones son "metodos"
//Las caracteristicas del obejto son "propiedades"

//EJERCICIO 1

// Contenedor
Cat myCat;

void setup(){
  size(800, 800);
  //Obejto  //
  myCat = new Cat(color(255, 100, 100), width/2, 50, 5);

}

void draw() {
  background(255);
  myCat.display();
  myCat.run();

}

class Cat {
 //Propiedades
 color c;
 float posX;
 float posY;
 Float speed;
 
 //Constructor
 //Uso la paalabroa temp para definir varibles diferente y no sobreescribir las otras
 Cat(color tempC, float tempPosX, float tempPosY, float tempSpeed) {
 c = tempC;
 posX = tempPosX;
 posY = tempPosY;
 speed = tempSpeed;

 }
 
 //Metodos
 void display() {
   stroke(0);
   fill(0);
   ellipse(posX, posY, 50, 50);
 
 
 }
 
 void run() {
  // posY = posY + speed;
  posY += speed;
 
 if(posY > height || posY < 0){
   speed *= -1;
 
 }
 
 
 
 }
}
