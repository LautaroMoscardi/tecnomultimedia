class Cuento {
  constructor() {
    this.pantalla = 0;
    this.fotos = [10] ;
    this.flecha1=loadImage('fotos/flecha1.png');
    this.flecha2=loadImage('fotos/flecha2.png');
    this.inicio=loadImage('fotos/principal.jpg');
    for (let i=1; i<=9; i++) {
      this.fotos [i] = loadImage('fotos/fondo'+i+'.jpg');
    }
    this.texto = [10];
    this.texto[0] ="Gregor, quien lleva una vida cotidiana y monótona, es el sostén económico de su familia, trabaja como viajante de comercio. ";
    this.texto[1] ="Un día, cuando se despie<rta, se da cuenta de que ha sufrido una extraña transformación y ahora tiene un cuerpo de insecto repugnante.";
    this.texto[2] ="¿Intentar reincorporarse a su vida cotidiana?";
    this.texto[3] ="La transformación de Gregor en un insecto gigante resulta ser una alucinación causada por una enfermedad grave. A medida que su salud se deteriora, su familia se esfuerza por encontrar una cura o una solución. A través de esta lucha, aprenden a valorar y apreciar a Gregor aún más.";
    this.texto[4] ="Gregor trata de incorporarse a su vida normal a pesar de su nueva apariencia, pero se encuentra con una serie de dificultades. Sus padres y su hermana descubren su nueva forma y quedan horrorizados. Aunque Gregor sigue siendo consciente de sí mismo y entiende el lenguaje humano, su familia tiene dificultades para aceptar su cambio y lo ven como una amenaza.";
    this.texto[5] ="¿Intentas desesperadamente acercarte a tu familia nuevamente?";
    this.texto[6] ="La familia de Gregor aprende a aceptar su nueva forma y encuentra formas de adaptarse. Juntos, exploran el mundo desde una perspectiva completamente nueva y descubren un sentido renovado de conexión y compasión. La transformación de Gregor se convierte en una oportunidad para el crecimiento y la transformación de toda la familia.";
    this.texto[7] ="La hermana de Gregor, Grete, se convierte en la única persona que intenta comprenderlo y ayudarlo. Ella le lleva comida y trata de limpiar su habitación, pero a medida que pasa el tiempo, incluso Grete empieza a perder la esperanza y la paciencia. La situación empeora cuando la familia decide alquilar una habitación de su casa para obtener ingresos adicionales.";
    this.texto[8] ="Gregor se va debilitando física y emocionalmente. La familia se va distanciando cada vez más de él, y él se siente cada vez más aislado. Se siente cada vez más alienado de su propia humanidad.";
    this.texto[9] ="Finalmente, Gregor muere solo en su habitación. La noticia de su muerte no parece afectar demasiado a su familia. Al contrario, experimentan un sentido de liberación y comienzan a planear su futuro sin él.";
  }

  dibujar() {
    this.paginasCuento();
  }
  paginasCuento() {
    if (this.pantalla==0) {
      push();
      image(this.inicio, 0, 0, 800);
      
    } else if (this.pantalla==1) {
      push();
      image(this.fotos[9], 0, 0, 800, 500);
      text(this.texto[0], 100, 510, 580, 570);
      image(this.flecha1, 665, 570, 30, 20);
      image(this.flecha2, 5, 570, 30, 20);
      pop();
      
    } else if (this.pantalla==2) {
      push();
      image(this.fotos[4], 0, 0, 800, 500);
      text(this.texto[1], 100, 510, 580, 570);
      text("¿Intentar reincorporarse a su vida cotidiana?", 160, 555, 410, 570);
      text("si", 600, 570, 560, 580);
      text("no", 50, 570, 90, 580);
      image(this.flecha1, 665, 570, 30, 20);
      image(this.flecha2, 5, 570, 30, 20);
      pop();
      
      
    } else if (this.pantalla==3) {
      push();
      image(this.fotos[6], 0, 0, 800, 500);
      text(this.texto[3], 100, 510, 580, 570);
      pop();
    } else if (this.pantalla==4) {
      push();
      image(this.fotos[7], 0, 0, 800, 500);
      text(this.texto[4], 100, 505, 580, 570);
      image(this.flecha1, 665, 570, 30, 20);
      pop();
      
    } else if (this.pantalla==5) {
      push();
      image(this.fotos[7], 0, 0, 800, 500);
      text("¿Intentas desesperadamente acercarte a tu familia nuevamente?", 150, 555, 410, 570);
      text("si", 600, 570, 560, 580);
      text("no", 50, 570, 90, 580);
      image(this.flecha1, 665, 570, 30, 20);
      image(this.flecha2, 5, 570, 30, 20);
      pop();

      
      
    } else if (this.pantalla==6) {
      image(this.fotos[7], 0, 0, 800, 500);
      text(this.texto[6], 100, 505, 580, 570);
    } else if (this.pantalla==7) {
      image(this.fotos[2], 0, 0, 800, 500);
      text(this.texto[7], 100, 505, 580, 570);
      image(this.flecha1, 665, 570, 30, 20);
     
    } else if (this.pantalla==8) {
    } else if (this.pantalla==9) {
      image(this.fotos[8], 0, 0, 800, 500);
      text(this.texto[8], 10, 500, 580, 570);
      image(this.flecha1, 665, 560, 30, 20);
      
    } else if (this.pantalla=10) {
      image(this.fotos[3], 0, 0, 600, 500);
      text(this.texto[9], 10, 500, 580, 570);
      image(this.flecha2, 5, 570, 30, 20);
    }
  }
  botones(event) {
    if (this.pantalla==0) {

      if (mouseX > 233+100 && mouseY > 377 && mouseX < 369+100 && mouseY < 422) {
        this.pantalla = 1;
      }
    } else if (this.pantalla==1) {

      if (mouseX > 565+100 && mouseY > 570 && mouseX <750 && mouseY < 570+20) {
        this.pantalla = 2;
      }
    } else if (this.pantalla==2) {

      if (mouseX > 565+100 && mouseY > 570 && mouseX <750 && mouseY < 570+20) {
        this.pantalla = 4;
      }
      if (mouseX > 5 && mouseY > 570 && mouseX <5+30 && mouseY < 570+20) {
        this.pantalla = 3;
      }
    } else if (this.pantalla==3) {
    } else if (this.pantalla==4) {

      if (mouseX > 565+100 && mouseY > 570 && mouseX <750 && mouseY < 570+20) {
        this.pantalla = 5;
      }
    } else if (this.pantalla==5) {


      if (mouseX > 565+100 && mouseY > 570 && mouseX <750 && mouseY < 570+20) {
        this.pantalla = 6 ;
      }
      if (mouseX > 5&& mouseY > 570 && mouseX <5+30 && mouseY < 570+20) {
        this.pantalla = 7;
      }
    } else if (this.pantalla==6) {
    } else if (this.pantalla==7) {
      if (mouseX > 565+100 && mouseY > 570 && mouseX <750 && mouseY < 570+20) {
        this.pantalla = 8 ;
      }
    } else if (this.pantalla==8) {
    } else if (this.pantalla==9) {
      if (mouseX > 565+100 && mouseY > 570 && mouseX <750 && mouseY < 570+20) {
        this.pantalla = 10 ;
      }
    }
  }
}
