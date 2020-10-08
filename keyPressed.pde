void keyPressed() {
  cambiarEstado (' ', 0, 1);
  cambiarEstado ('1', 1, 2);
  cambiarEstado ('2', 2, 3);
  cambiarEstado ('0', 3, 4);
  cambiarEstado ('a', 3, 9);
  cambiarEstado ('m', 3, 8);
  cambiarEstado ('x', 3, 10);
  cambiarEstado ('6', 4, 5);
  cambiarEstado ('7', 5, 6);
  cambiarEstado ('8', 6, 7);
  cambiarEstado ('9', 7, 3);
  cambiarEstado ('v', 8, 9);
  cambiarEstado ('k', 9, 10);
  cambiarEstado ('q', 10, 11);
  cambiarEstado ('w', 10, 14);
  cambiarEstado ('l', 11, 12);
  cambiarEstado ('j', 12, 13);
  cambiarEstado ('b', 14, 16);
  //RESTART
  if ( key == 'z' )
    estado = estado +3;
  // REINICIO
  if ( estado == 16 )
    estado = 2;
  //IMPRIMO VALOR
  println( "estado: " + estado );
}
