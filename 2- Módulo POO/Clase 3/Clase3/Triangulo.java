import java.lang.Math;
public class Triangulo{
    private double lado1;
    private double lado2;
    private double lado3;
    private String colorRelleno;
    private String colorLinea;
    
    public Triangulo(double l1,double l2,double l3){
        lado1=l1;
        lado2=l2;
        lado3=l3;
    }
    public Triangulo(){
     
    }
    public double getLado1(){
      return lado1;   
    }
    public double getLado2(){
      return lado2;   
    }
    public double getLado3(){
      return lado3;   
    }
    public String getColorRelleno(){
      return colorRelleno;   
    }
    public String getColorLinea(){
      return colorLinea;   
    }
    public void setLado1(double lado){
      lado1= lado;   
    }
    public void setLado2(double lado){
      lado2= lado;   
    }
    public void setLado3(double lado){
      lado3= lado;   
    }
    public void setColorRelleno(String color){
      colorRelleno=color;   
    }
    public void setColorLinea(String color){
      colorLinea=color;   
    }
    public double calcularArea(){
        double s=(lado1+lado2+lado3)/2;
        return Math.sqrt (s*(s-lado1)*(s-lado2)*(s-lado3));
    }
    public double calcularPerimetro(){
        return (lado1+lado2+lado3);
    }
}
