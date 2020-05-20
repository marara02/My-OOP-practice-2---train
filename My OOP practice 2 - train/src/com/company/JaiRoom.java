package com.company;

public class JaiRoom extends Clients{
 private int total_places;

 JaiRoom(int total_places){
     this.total_places = total_places;
 }

    public int getTotal_places() {
        return total_places;
    }

    public void check() {
     cost();
     MySQL();
    }

    @Override
    public void fourPeople() {
       int coupe = 1;
        for (int i = 1; i < total_places; i++) {
            coupe = i / 4;
        }
        System.out.println(coupe + "Coupe");
    }
    @Override
    public void ManyPeople() {
        cost();
    }
}
