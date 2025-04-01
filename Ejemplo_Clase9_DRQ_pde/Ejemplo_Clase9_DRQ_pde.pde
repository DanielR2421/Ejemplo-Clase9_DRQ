//Programación orientada a objetos - OPP

//Ventajas del OOPS: Reutilizar codigo; Encontrar los problemas en el codigo mas rapido; Codigo mas seguro; Código mas facil de mantener
//Conceptos: Clase & Objeto
// Objeto: Es la idea (Clase: es la plantilla del objeto) o El objeto es la instancia de la clase, osea que permite crear objetos a partir de esa plantilla
// Al progrmar con objetos, las funciones son "metodos"
//Las caracteristicas del obejto son "propiedades"

//EJERCICIO 1

// Contenedor
Perro miPerro;
Perro miPerro2;
Gato miGato;
Elefante miElefante;

void setup() {
  size(800, 800);
  //Obejto  //
  miPerro = new Perro(color(255), width/2, 50, 5, 10);
  miPerro2 = new Perro(color(200, 100, 100), width/4, 50, 10, 10);
  miGato = new Gato(color(100), width/3, 50, 5, 10);
  miElefante = new Elefante(color(200), width/5, 50, 15, 10);
}

void draw() {
  background(0);

  miPerro.display();
  miPerro.move();
  miPerro.ladrar();

  miPerro2.display();
  miPerro2.move();
  miPerro2.ladrar();

  miGato.display();
  miGato.move();
  miGato.maullar();
  
  miElefante.display();
  miElefante.move();
  miElefante.caminarHaciaAtras();
  
  
  
}
class Mamifero {
  //Propiedades
  color c;
  float posX;
  float posY;
  float speed;

  //Constructor
  Mamifero(color tempC, float tempPosX, float tempPosY, float tempSpeed) {
    c = tempC;
    posX = tempPosX;
    posY = tempPosY;
    speed = tempSpeed;
  }

  //Metodos
  void display() {
    stroke(0);
    fill(c);
    ellipse(posX, posY, 50, 50);
  }

  void move() {
    // posY = posY + speed;
    posY += speed;

    if (posY > height || posY < 0) {
      speed *= -1;
    }
  }
}

class Perro extends Mamifero {
  float lengthTail;

  //Constructor
  Perro(color tempC, float tempPosX, float tempPosY, float tempSpeed, float tempLengthTail) {
    super(tempC, tempPosX, tempPosY, tempSpeed);
    lengthTail = tempLengthTail;
  }
  void ladrar() {
    println("Guau");
  }
}


class Gato extends Mamifero {
  float lenghthNails;

  //Constructor
  Gato(color tempC, float tempPosX, float tempPosY, float tempSpeed, float templenghthNails) {
    super(tempC, tempPosX, tempPosY, tempSpeed);
    lenghthNails = templenghthNails;
  }

  void maullar() {
    println("Miau");
  }
}

class Elefante extends Mamifero {
 float lengthTrump;
 
 Elefante(color tempC, float tempPosX, float tempPosY, float tempSpeed, float tempLengthTrump) {
    super(tempC, tempPosX, tempPosY, tempSpeed);
    lengthTrump = tempLengthTrump;
 
 }

 void caminarHaciaAtras() {
 println("Bruuuuuuu");

 }
}
