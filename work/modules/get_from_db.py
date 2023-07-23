def get_from_db(spark, conn_properties: dict, temp_view_name:str):
    """Read given table from local database.

    Args:
        conn_properties (dict): tabble target and connection 
        properties
        temp_view_name (str): TempView name

    Returns:
        TempView: data from database 
    """   

    df = (
        spark.read.format("jdbc")
        .option("driver", conn_properties["driver"])
        .option("url", conn_properties["url"])
        .option("user", conn_properties["user"])
        .option("password", conn_properties["password"])
        .option("dbtable", conn_properties["dbtable"])
        .load()
    )

    return df.createOrReplaceTempView(temp_view_name)