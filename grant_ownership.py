import os
import snowflake.connector

conn = snowflake.connector.connect(
    user=os.environ["SNOWFLAKE_USER"],
    password=os.environ["SNOWFLAKE_PASSWORD"],
    account=os.environ["SNOWFLAKE_ACCOUNT"],
    role=os.environ["SNOWFLAKE_ROLE"],
    warehouse=os.environ["SNOWFLAKE_WAREHOUSE"]
)

cs = conn.cursor()
try:
    cs.execute("GRANT OWNERSHIP ON ROLE HCP_USER TO ROLE SYSADMIN COPY CURRENT GRANTS;")
    print("Ownership transferred successfully.")
finally:
    cs.close()
    conn.close()
