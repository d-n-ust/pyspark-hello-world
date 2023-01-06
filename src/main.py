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