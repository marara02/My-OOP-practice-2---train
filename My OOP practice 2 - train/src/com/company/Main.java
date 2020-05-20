package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
            JaiRoom j = new JaiRoom(40);
            System.out.println("In Simple train Total places:"+j.getTotal_places());
            j.fourPeople();
            j.check();


            TalgoRoom tt = new TalgoRoom(50);
            System.out.println(tt.getPlaces()+"places in Talgo");
            tt.checkTalgo();
            tt.fourPeople();
        }
    }
