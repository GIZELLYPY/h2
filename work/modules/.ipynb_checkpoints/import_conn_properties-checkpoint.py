import json

def import_conn_properties(path: str) -> dict:
    """Returns connection properties
    that allows to write and read in scpecific table.

    Args:
        path (str): Path's file with connection's  data

    Returns:
        dict: dict with table/db  connection properties
    """
    with open(path) as f:
        data = f.read()
    return json.loads(data)