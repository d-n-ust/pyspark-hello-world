# pyspark-hello-world
Minimal pyspark program with local virtual env

# How to install
```
make install
```

# How to run
```
make run
```

This command will run the following pyspark program: 
```python
from pyspark.sql import SparkSession

spark = SparkSession\
        .builder\
        .getOrCreate()

dataDictionary = [
        ('James',{'hair':'black','eye':'brown'}),
        ('Jefferson',{'hair':'red','eye':''})
]

df = spark.createDataFrame(data=dataDictionary, schema = ["name","properties"])
df.printSchema()
df.show(truncate=False)
```