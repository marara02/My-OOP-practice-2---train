package com.company;

public class TalgoRoom extends RichTalgoClients {
    private int places;
    TalgoRoom(int places){
    this.places = places;
}

    public int getPlaces() {
        return places;
    }

    public void checkTalgo(){
     cost();
     table();
    }

    @Override
    public void fourPeople() {
        System.out.println("There is only coupe!");
    }
}
