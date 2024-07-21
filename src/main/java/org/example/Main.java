package org.example;

import java.io.*;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        String dbPath = Paths.get("dataDB", "database.sqlite").toString();
        String sqlsPath = Paths.get("sqls").toString();

        try (Connection conn = DriverManager.getConnection("jdbc:sqlite:" + dbPath)) {
            if (conn != null) {
                for (int i = 1; i <= 24; i++) {
                    String sqlFileName = String.format("ex_%02d.sql", i);
                    File sqlFile = Paths.get(sqlsPath, sqlFileName).toFile();

                    if (sqlFile.exists()) {
                        try (BufferedReader br = new BufferedReader(new FileReader(sqlFile))) {
                            StringBuilder sb = new StringBuilder();
                            String line;
                            while ((line = br.readLine()) != null) {
                                sb.append(line).append("\n");
                            }
                            String sql = sb.toString();

                            try (Statement stmt = conn.createStatement()) {
                                stmt.execute(sql);
                                System.out.println("Executed " + sqlFileName);
                            } catch (Exception e) {
                                System.err.println("Error executing " + sqlFileName + ": " + e.getMessage());
                            }
                        } catch (Exception e) {
                            System.err.println("Error reading " + sqlFileName + ": " + e.getMessage());
                        }
                    } else {
                        System.err.println(sqlFileName + " does not exist.");
                    }
                }
            }
        } catch (Exception e) {
            System.err.println("Error connecting to database: " + e.getMessage());
        }
    }
}