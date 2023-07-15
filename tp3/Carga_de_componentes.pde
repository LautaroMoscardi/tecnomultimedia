PImage [] fondos = new PImage [10];
String [] textos = new String [10];
PImage flecha1;
PImage flecha2;
PImage inicio;
PImage creditos;
void cargaDeComponentes (){
for (int i=1; i<= 9; i++){
 fondos [i] = loadImage ("fondo ("+i+").jpg");
}
textos[0] ="Gregor, quien lleva una vida cotidiana y monótona, es el sostén económico de su familia, trabaja como viajante de comercio. ";
textos[1] ="Un día, cuando se despierta, se da cuenta de que ha sufrido una extraña transformación y ahora tiene un cuerpo de insecto repugnante.";
textos[2] ="¿Intentar reincorporarse a su vida cotidiana?";
textos[3] ="La transformación de Gregor en un insecto gigante resulta ser una alucinación causada por una enfermedad grave. A medida que su salud se deteriora, su familia se esfuerza por encontrar una cura o una solución. A través de esta lucha, aprenden a valorar y apreciar a Gregor aún más.";
textos[4] ="Gregor trata de incorporarse a su vida normal a pesar de su nueva apariencia, pero se encuentra con una serie de dificultades. Sus padres y su hermana descubren su nueva forma y quedan horrorizados. Aunque Gregor sigue siendo consciente de sí mismo y entiende el lenguaje humano, su familia tiene dificultades para aceptar su cambio y lo ven como una amenaza.";
textos[5] ="¿Intentas desesperadamente acercarte a tu familia nuevamente?";
textos[6] ="La familia de Gregor aprende a aceptar su nueva forma y encuentra formas de adaptarse. Juntos, exploran el mundo desde una perspectiva completamente nueva y descubren un sentido renovado de conexión y compasión. La transformación de Gregor se convierte en una oportunidad para el crecimiento y la transformación de toda la familia.";
textos[7] ="La hermana de Gregor, Grete, se convierte en la única persona que intenta comprenderlo y ayudarlo. Ella le lleva comida y trata de limpiar su habitación, pero a medida que pasa el tiempo, incluso Grete empieza a perder la esperanza y la paciencia. La situación empeora cuando la familia decide alquilar una habitación de su casa para obtener ingresos adicionales.";
textos[8] ="Gregor se va debilitando física y emocionalmente. La familia se va distanciando cada vez más de él, y él se siente cada vez más aislado. Se siente cada vez más alienado de su propia humanidad.";
textos[9] ="Finalmente, Gregor muere solo en su habitación. La noticia de su muerte no parece afectar demasiado a su familia. Al contrario, experimentan un sentido de liberación y comienzan a planear su futuro sin él.";

flecha1 = loadImage ("flecha1.png");
flecha2 = loadImage ("flecha2.png");
inicio = loadImage ("principal.jpg");
creditos= loadImage ("credi.jpg");
}
