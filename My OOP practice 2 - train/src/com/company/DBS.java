package com.company;

import java.sql.*;
import java.util.Scanner;

public abstract class DBS {
    Scanner scanner = new Scanner(System.in);

    public boolean connection() {    ///Function for connection with SQl and insert data to table
        try {
            System.out.println("Booking in order to Simple Train");
            System.out.print("Enter your whole name: ");
            String Name = scanner.nextLine();
            System.out.print("Enter your A place: ");
            String FromCity = scanner.nextLine();
            System.out.print(("Enter your B place:"));
            String ToCity = scanner.nextLine();

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Clients", "root", "123456");
            //Statement stmt = con.createStatement();
            String sql = ("INSERT INTO client " + "(Whole_Name ,FromCity, ToCity)" + "VALUES (?,?,?)");
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, Name);
            stmt.setString(2, FromCity);
            stmt.setString(3, ToCity);
            stmt.executeUpdate();
            con.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return false;
    }// end of function

    public void count() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Clients", "root", "123456");
            Statement s = con.createStatement();
            ResultSet r = s.executeQuery("SELECT COUNT(*) AS rowcount FROM client");
            r.next();
            int count = r.getInt("rowcount");
            r.close();
            System.out.println("There is " + count + "clients in Simple train");
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }
}
