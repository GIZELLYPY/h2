def write_on_db(spark, df, conn_properties: dict):
    """Write given dataframe on local database.

    Args:
        df (spark dataframe): clientes spark dataframe
        clients_properties (dict): target table and connection 
        properties

    Returns:
        str: Sucess message
    """    

    df.write.format("jdbc").option("driver", conn_properties["driver"]).option(
        "url", conn_properties["url"]
    ).option("user", conn_properties["user"]).option(
        "password", conn_properties["password"]
    ).option(
        "dbtable", conn_properties["dbtable"]
    ).mode(
        "append"
    ).save()

    return "Sucess"