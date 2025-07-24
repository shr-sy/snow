import json
import os
import sys
import snowflake.connector

# Required for Terraform external data source
_ = json.load(sys.stdin)

try:
    conn = snowflake.connector.connect(
        user=os.environ["SNOWFLAKE_USER"],
        password=os.environ["SNOWFLAKE_PASSWORD"],
        account=os.environ["SNOWFLAKE_ACCOUNT"],
        role=os.environ["SNOWFLAKE_ROLE"],
        warehouse=os.environ["SNOWFLAKE_WAREHOUSE"]
    )

    cursor = conn.cursor()
    cursor.execute("GRANT OWNERSHIP ON ROLE HCP_USER TO ROLE SYSADMIN COPY CURRENT GRANTS;")
    print(json.dumps({"result": "success"}))

except Exception as e:
    print(json.dumps({"error": str(e)}))
    sys.exit(1)

finally:
    try:
        cursor.close()
        conn.close()
    except:
        pass
