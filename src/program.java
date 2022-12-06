

import java.sql.*;  //Import the java SQL library

class program     //Create a new class to encapsulate the program
{

    public static void SQLError (Exception e)   //Our function for handling SQL errors
    {
        System.out.println("ORACLE error detected:");
        e.printStackTrace();
    }

    public static void main (String args[])  //The main function

    {

        try {                                        //Keep an eye open for errors

            String driverName = "oracle.jdbc.driver.OracleDriver";
            Class.forName(driverName);

//            System.out.println("Connecting   to Oracle...");

            String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
            Connection conn = DriverManager.getConnection(url,"pschemer","pumseecm");

//            System.out.println("Connected!");

            Statement stmt = conn.createStatement();   //Create a new statement

            // --------------------------- REPORT 1

            //Now we execute our query and store the results in the myresults object:
            ResultSet myresults = stmt.executeQuery("select cid, cname, caddress, purchasedate," +
                " iid, idescription, price, ship, quantity, price*quantity as Total_Price, " +
                "ship*quantity as Total_Ship, price*quantity+ship*quantity as Total, ccno " +
                "from customer natural join purchase natural join item " +
                "where purchasedate between 181231 and 190401 " +
                "order by cid");
            System.out.println( "-------------------------------------------------------------\n" +
                                "Customer Activity for the Quarter January 1 - March  31, 2019\n" +
                                "-------------------------------------------------------------\n");

            String customer = "";
            while (myresults.next()) //pass to the next row and loop until the last
            {
                if (!myresults.getString("cid").equals(customer) ) { // Print new headers for each customer
                    customer = myresults.getString("CID");
                    System.out.printf("\n\nCustomer Id: %s\t\tName: %s\t\tAddress: %s\n" +
                        "Date\tIid\tDesc\t\tPrice\tShip\tQty  \tT.Price\t\tT.Ship\t\tTotal\t\tCredit\n" +
                        "-----------------------------------------------------------------------------------------------------\n",
                        customer, myresults.getString("Cname"), myresults.getString("Caddress"));
                }

                String description = myresults.getString("idescription"); // get description to fit in formatting.
                System.out.printf("%s\t%s\t%s\t\t%s\t\t%s\t\t%s\t\t%s\t\t\t%s\t\t\t%s\t\t\t%s\n",
                    myresults.getString("purchasedate"),
                    myresults.getString("iid"),
                    description.length() > 7 ? description.substring(0,7) : description,
                    myresults.getString("price"),
                    myresults.getString("ship"),
                    myresults.getString("quantity"),
                    myresults.getString("Total_Price"),
                    myresults.getString("Total_Ship"),
                    myresults.getString("Total"),
                    myresults.getString("ccno")); // print column data for each row
            }

            // get summary data
            myresults = stmt.executeQuery("select count(*) as Quarter_Purchases, " +
                "sum(price*quantity + ship*quantity) AS Overall_Charges, " +
                "avg(price*quantity + ship*quantity) AS Average_Charge " +
                "from customer natural join purchase natural join item " +
                "where purchasedate between 181231 and 190401 " +
                "order by cid");
            myresults.next();

            // print summary
            System.out.printf("\n\n-----------------------------------------------------------------------------------------------------\n" +
                "SUMMARY:\t\tQuarter Purchases: %s\t\tOverall Charges: %s\t\tAverage Charge: %s\n",
                myresults.getString("Quarter_Purchases"),
                myresults.getString("Overall_Charges"),
                String.format("%.2f", Double.valueOf(myresults.getString("Average_Charge"))));

            // get inactive customers in Q1 2019
            myresults = stmt.executeQuery("(select cid, cname " +
                "from customer) " +
                "minus " +
                "(select cid, cname " +
                "from customer natural join purchase " +
                "where purchasedate between 181231 and 190401)");

            // print inactive customers
            System.out.println("\n\t\t\t\tThe following customers were not active this period:");
            while(myresults.next())
                System.out.printf("\t\t\t\tCid: %s\tName: %s\n",
                    myresults.getString("cid"), myresults.getString("cname"));
            System.out.println("-----------------------------------------------------------------------------------------------------\n");



            // ------------------------- REPORT 2


            System.out.println( "\n\n-------------------------------------------------------------\n" +
                "Supplier Activity for the Quarter January 1 - March  31, 2019\n" +
                "-------------------------------------------------------------\n");


            myresults = stmt.executeQuery("select sid, sname, location, " +
                "tid, procuredate, iid, idescription, quantity, cost*quantity as total_cost " +
                "from supplier natural join avail natural join item natural join procure " +
                "where procuredate between 181231 and 190401" +
                "order by sid");


            String supplier = "";
            while (myresults.next()) //pass to the next row and loop until the last
            {
                if (!myresults.getString("sid").equals(supplier) ) { // Print new headers for each supplier
                    supplier = myresults.getString("sid");
                    System.out.printf("\n\nSupplier Id: %s\t\tName: %s\t\tLocation: %s\n" +
                            "Tid\tDate\tIid\tDesc\t\t\tQty\t\t\t\tTotal Cost\n" +
                            "-----------------------------------------------------------------------------------------------------\n",
                        supplier, myresults.getString("sname"), myresults.getString("location"));
                }

                String description = myresults.getString("idescription"); // get description to fit in formatting.
                System.out.printf("%s\t%s\t%s\t%s\t\t\t%s\t\t\t\t%s\n",
                    myresults.getString("tid"),
                    myresults.getString("procuredate"),
                    myresults.getString("iid"),
                    description.length() > 7 ? description.substring(0,7) : description,
                    myresults.getString("quantity"),
                    myresults.getString("total_cost")); // print column data for each row
            }

            // get summary data
            myresults = stmt.executeQuery("select count(*) as Supplier_Procurements, " +
                "sum(cost*quantity) AS Overall_Charges, " +
                "avg(cost*quantity) AS Average_Charge " +
                "from supplier natural join procure natural join item natural join avail " +
                "where procuredate between 181231 and 190401 " +
                "order by sid");
            myresults.next();

            // print summary
            System.out.printf("\n\n-----------------------------------------------------------------------------------------------------\n" +
                    "SUMMARY:\t\tSupplier Procurements: %s\t\tOverall Charges: %s\t\tAverage Charge: %s\n",
                myresults.getString("Supplier_Procurements"),
                myresults.getString("Overall_Charges"),
                String.format("%.2f", Double.valueOf(myresults.getString("Average_Charge"))));

            // get inactive suppliers in Q1 2019
            myresults = stmt.executeQuery("(select sid, sname " +
                "from supplier) " +
                "minus " +
                "(select sid, sname " +
                "from supplier natural join procure " +
                "where procuredate between 181231 and 190401)");

            // print inactive suppliers
            System.out.println("\n\t\t\t\tThe following suppliers were not active this period:");
            while(myresults.next())
                System.out.printf("\t\t\t\tSid: %s\tName: %s\n",
                    myresults.getString("sid"), myresults.getString("sname"));
            System.out.println("-----------------------------------------------------------------------------------------------------\n");




            conn.close();  // Close our connection.

        }
        catch (Exception e) {SQLError(e);} //if any error occurred in the try..catch block, call the SQLError function

    }
}

