import os
import pandas as pd
from dotenv import load_dotenv
from sqlalchemy import create_engine

load_dotenv()

df = pd.read_csv("data/tv_show.csv")

user = os.getenv("DB_USER")
password = os.getenv("DB_PASSWORD")
host = os.getenv("DB_HOST")
port = os.getenv("DB_PORT")
db = os.getenv("DB_NAME")

engine = create_engine(f"postgresql://{user}:{password}@{host}:{port}/{db}")
df.to_sql("movies", engine, if_exists="replace", index=False)
