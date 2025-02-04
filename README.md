# Data Engineering ZoomCamp - Module 3 - Data Warehouse and BigQuery

In this module you can find the different SQL queries used in BigQuery to solve
the questions of the course homework.

Also, there are a couple of questions that are pure theory. Here they are:

* Question 7: Where is the data stored in the External Table you created?

  The data is stored in the *GCP bucket*. In BigQuery there is only a pointer to that data.

* Question 8: It is best practice in Big Query to always cluster your data?

    False.
    It is not always a best practice.
    It is a best practice when the data is medium-big (more than 64MB per table/partition),
    or if your queries always filter on particular columns
    or on colums that have a high cardinality.
    In other situations, the speedup and cost reduction will be negligible.

    Reference: [Introduction to clustered tables](https://cloud.google.com/bigquery/docs/clustered-tables?form=MG0AV3)

* Bonus question: Write a SELECT count(*) query FROM the materialized table you created. How many bytes does it estimate will be read? Why?

  The query could be `SELECT COUNT(*) from dezc_3.yellow`.

  It estimates that zero bytes will be read.
  The number of rows is part of the metadata of the table, so no actual data have to be queried, just the table metadata.

  This is like when you list the files in a folder and look at their sizes: you don't need to read the actual files to know the file sizes.
