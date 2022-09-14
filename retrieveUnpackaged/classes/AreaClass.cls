public class AreaClass {

    decimal radius=50;
    decimal area;
    decimal pi=3.14;
    
    public decimal areaOfCircle(){
        area = this.pi*radius*radius;
        return area;
    }
}