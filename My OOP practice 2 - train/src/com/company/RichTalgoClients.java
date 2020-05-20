package com.company;

import java.sql.*;
import java.util.Scanner;

public abstract class RichTalgoClients extends DBSTalgo implements HighTalgo,Coupe {
    Scanner scanner = new Scanner(System.in);

    public void sql() {
         table();
         count();
    }

    @Override
    public void InterMedia() {
        System.out.println("Every room have TV and WIFI connection");
    }

    @Override
    public void CleanRoom() {
        System.out.println("If you need clean your compartment,call to manager");
    }

    @Override
    public void Speed() {
        double speed = 1200;
        System.out.println("Speed:" + speed);
    }

    @Override
    public void cost() {
        double cost = scanner.nextDouble();
        if ((cost >= 17000) && (cost <=20000)) {
            System.out.println("Train type Talgo");
            Speed();
            InterMedia();
            CleanRoom();
            fourPeople();
        }
    }
}
