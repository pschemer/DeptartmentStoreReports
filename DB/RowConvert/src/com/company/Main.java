package com.company;
import java.io.*;

public class Main {

    private static String OUT = "queries.sql";//"build_tables.sql";
    private static String list[] = {"admin", "avail", "ccard", "customer",
                                    "department", "employee", "item", "procure",
                                    "purchase", "retail", "supplier", "usage"};

    public static void main(String[] args) {
	// write your code here
        BufferedWriter writer;
        try {
            File file = new File(OUT);
            if (file.exists())  file.delete();
            file.createNewFile();

            writer = new BufferedWriter(new FileWriter(file));

            for (String name : list) {
                System.out.println("Working on: " + name);
                //convert(name, writer);
                writequery(name, writer);
                System.out.println(name + " complete.");
            }
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private static void writequery(String name, BufferedWriter writer) {
        try {
            name = name.toUpperCase();
            writer.write("\n\n/*\t\t" + name + "\t\t*/\n");
            writer.write(String.format("SELECT\tcolumn_name, data_type\nFROM\tuser_tab_columns\nWHERE\ttable_name='%s';\n", name));
            writer.write(String.format("SELECT\tX.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position\nFROM\tuser_constraints X, user_cons_columns Y\nWHERE\tX.constraint_name = Y.constraint_name\nAND\tX.table_name = '%s';\n", name));
            writer.write(String.format("SELECT * FROM %s;", name));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void convert(String name, BufferedWriter writer) {
        BufferedReader reader;
        try {
            reader = new BufferedReader(new FileReader(name + ".csv"));
            name = name.toUpperCase();

            writer.write("\ndrop table\t" + name + ";\ncreate table\t" + name + "\n(\n\tid CHAR(6)\tPRIMARY KEY,\n\tname\tVARCHAR(10)\n)\n");

            String line = reader.readLine();
            line = reader.readLine();
            line = reader.readLine();

            while (line != null) {
                writer.write("insert into\t" + name + "\tvalues\t(" + line + ");\n");
                line = reader.readLine();
            }

            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
