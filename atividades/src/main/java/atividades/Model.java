package atividades;
public class Model {

  public static int validaDados(float frequencia, float nota) {
	  if (frequencia >= 75 && nota > 6)
		  return 1;
	  else 
		  return 0;
  }
  
}