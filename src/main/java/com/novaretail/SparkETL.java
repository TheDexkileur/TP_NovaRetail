package com.novaretail;

import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;

import java.util.Properties;

import static org.apache.spark.sql.functions.col;

public class SparkETL {

    public static void main(String[] args) {

        SparkSession spark = SparkSession.builder()
                .appName("NovaRetail ETL Pipeline")
                .master("local[*]")
                .getOrCreate();

        String url = "jdbc:mysql://localhost:3306/novaretail_legacy";

        Properties properties = new Properties();
        properties.put("user", "root");
        properties.put("password", "");
        properties.put("driver", "com.mysql.cj.jdbc.Driver");

        Dataset<Row> df = spark.read()
                .jdbc(url, "customer_transactions", properties);

        System.out.println("DATA EXTRAITE");
        df.show();

        Dataset<Row> cleaned = df.filter(col("country").isNotNull());

        Dataset<Row> anonymized = cleaned.drop("customer_email");

        Dataset<Row> sorted = anonymized
                .orderBy(col("country"), col("purchase_amount").desc());

        sorted.write()
                .mode("overwrite")
                .partitionBy("country")
                .json("data_lake_output");

        System.out.println("Export JSON terminé");

        spark.stop();
    }
}