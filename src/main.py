from pyspark.sql import SparkSession

spark = SparkSession\
        .builder\
        .getOrCreate()

dataDictionary = [
        ('James',{'hair':'black','eye':'brown'}),
        ('Michael',{'hair':'brown','eye':None}),
        ('Robert',{'hair':'red','eye':'black'}),
        ('Washington',{'hair':'red','eye':'grey'}),
        ('Jefferson',{'hair':'red','eye':''})
]

df = spark.createDataFrame(data=dataDictionary, schema = ["name","properties"])
df.printSchema()
df.show(truncate=False)