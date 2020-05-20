package com.company;

import java.sql.*;
import java.util.Scanner;

public abstract class DBSTalgo {
    Scanner scanner = new Scanner(System.in);

    public boolean table() {
        try {
            System.out.println("Booking in order to Talgo Train");
            System.out.print("Enter your whole name:");
            String Name = scanner.nextLine();

            System.out.println("Enter your A place:");
            String FromCity = scanner.nextLine();


            System.out.print(("Enter your B place:"));
            String ToCity = scanner.nextLine();

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Clients", "root", "123456");
            //Statement stmt = con.createStatement();
            String sql = ("INSERT INTO talgoclient " + "(name ,from_city, to_city)" + "VALUES (?,?,?)");
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, Name);
            stmt.setString(2, FromCity);
            stmt.setString(3, ToCity);
            stmt.executeUpdate();
            con.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return true;
    }

    public void count(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Clients", "root", "123456");
            Statement s = con.createStatement();
            ResultSet r = s.executeQuery("SELECT COUNT(*) AS rowcount FROM talgoclient");
            r.next();
            int count = r.getInt("rowcount");
            r.close();
            System.out.println("There is " + count + "clients in Talgo train");
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }
    }
