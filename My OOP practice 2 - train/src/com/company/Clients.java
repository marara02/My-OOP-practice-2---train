package com.company;

import java.sql.*;
import java.util.Scanner;

public abstract class Clients extends DBS  implements Jai,Coupe,Many {
    Scanner scanner = new Scanner(System.in);

    public boolean MySQL() {
        connection();
        count();
        return true;
    }

    @Override
    public void Service() { //Function which Simple train have and there is operation for get more information about train
        System.out.println("Choose the deserved type of Service:");
        System.out.println("1.Canteen");
        System.out.println("2.Healthcare");
        Scanner ss = new Scanner(System.in);
        int n = ss.nextInt();
        try {
            switch (n) {
                case 1:
                    System.out.println("For rooms of class B there is no canteen accepted");
                    break;
                case 2:
                    System.out.println("Medical room in first block,but there is only therapist");
                default:
                    System.out.println("We have only 2 cases");
            }
        } catch (NumberFormatException e) {
            System.out.println("Only integer numbers between 1-2");
        }
    } //end of function

    @Override
    public void Speed() { // Same function which both trains have
        double speed = 500;
        System.out.println("Speed of train:" + speed);
    }

    @Override
    public void cost() { //Function same in Simple and Talgo, there by cost was determined place type and all data about train

        double cost = scanner.nextDouble();
        if ((cost >= 9000) && (cost < 10000)) {
            System.out.print("Train type: Typical train there will be 4 people in coupe");
            Speed();
            Service();
            fourPeople();
        }
        else if ((cost >= 1000) && (cost <= 8000)) {
            System.out.println("Many people in one place");
            Speed();
            Service();
            ManyPeople();
        } else {System.out.println("Please,book Talgo class");}
    } //end
}