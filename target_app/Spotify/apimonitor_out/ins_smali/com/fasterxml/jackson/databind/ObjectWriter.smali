.class public Lcom/fasterxml/jackson/databind/ObjectWriter;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field protected static final NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter; = null
.field private static final serialVersionUID:J = -0x617d35a8b1013b0cL
.field protected final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;
.field protected final _jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
.field protected final _prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
.field protected final _rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.field protected final _rootType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _schema:Lcom/fasterxml/jackson/core/FormatSchema;
.field protected final _serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
.field protected final _serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;
invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/MinimalPrettyPrinter;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prefetchRootSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method private final _configureJsonGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
sget-object v1, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;
if-ne v0, v1, :cond_18
const/4 v0, 0x0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;
:cond_e
:goto_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V
:cond_17
return-void
:cond_18
instance-of v1, v0, Lcom/fasterxml/jackson/core/util/Instantiatable;
if-eqz v1, :cond_24
check-cast v0, Lcom/fasterxml/jackson/core/util/Instantiatable;
invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/Instantiatable;->createInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/core/PrettyPrinter;
:cond_24
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;
goto :goto_e
:cond_28
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
goto :goto_e
.end method
.method private final _writeCloseable(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
.registers 10
const/4 v2, 0x0
move-object v0, p2
check-cast v0, Ljava/io/Closeable;
:try_start_4
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;
if-nez v1, :cond_16
invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
move-result-object v1
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
:try_start_f
:try_end_f
.catchall {:try_start_4 .. :try_end_f} :catchall_22
:goto_f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
:try_start_12
:try_end_12
.catchall {:try_start_f .. :try_end_12} :catchall_35
invoke-interface {v0}, Ljava/io/Closeable;->close()V
:try_end_15
.catchall {:try_start_12 .. :try_end_15} :catchall_3b
return-void
:cond_16
:try_start_16
invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
move-result-object v1
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {v1, p1, p2, v3, v4}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
:try_end_21
.catchall {:try_start_16 .. :try_end_21} :catchall_22
goto :goto_f
:catchall_22
move-exception v1
move-object v5, v1
move-object v1, v0
move-object v0, v5
:goto_26
if-eqz p1, :cond_2b
:try_start_28
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
:goto_2b
:cond_2b
:try_end_2b
.catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_31
if-eqz v1, :cond_30
:try_start_2d
invoke-interface {v1}, Ljava/io/Closeable;->close()V
:goto_30
:cond_30
:try_end_30
.catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_33
throw v0
:catch_31
move-exception v2
goto :goto_2b
:catch_33
move-exception v1
goto :goto_30
:catchall_35
move-exception v1
move-object p1, v2
move-object v5, v0
move-object v0, v1
move-object v1, v5
goto :goto_26
:catchall_3b
move-exception v0
move-object v1, v2
move-object p1, v2
goto :goto_26
.end method
.method protected final _configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
.registers 7
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configureJsonGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
if-eqz v0, :cond_17
instance-of v0, p2, Ljava/io/Closeable;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_writeCloseable(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
:goto_16
return-void
:cond_17
const/4 v1, 0x0
:try_start_18
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;
if-nez v0, :cond_31
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
:goto_25
const/4 v1, 0x1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
:try_end_29
.catchall {:try_start_18 .. :try_end_29} :catchall_2a
goto :goto_16
:catchall_2a
move-exception v0
if-nez v1, :cond_30
:try_start_2d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V
:goto_30
:cond_30
:try_end_30
.catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_3f
throw v0
:cond_31
:try_start_31
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
move-result-object v0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {v0, p1, p2, v2, v3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
:try_end_3e
.catchall {:try_start_31 .. :try_end_3e} :catchall_2a
goto :goto_25
:catch_3f
move-exception v1
goto :goto_30
.end method
.method protected final _prefetchRootSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 7
const/4 v0, 0x0
if-eqz p2, :cond_d
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v1
if-nez v1, :cond_e
:cond_d
:goto_d
return-object v0
:cond_e
:try_start_e
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
move-result-object v1
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {v1, p2, v2, v3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
:try_end_17
.catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_e .. :try_end_17} :catch_19
move-result-object v0
goto :goto_d
:catch_19
move-exception v1
goto :goto_d
.end method
.method protected _serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->createInstance(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
move-result-object v0
return-object v0
.end method
.method public writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V
:try_start_b
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;
move-result-object v1
invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
:try_end_14
.catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_b .. :try_end_14} :catch_19
.catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_1b
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->getAndClear()Ljava/lang/String;
move-result-object v0
return-object v0
:catch_19
move-exception v0
throw v0
:catch_1b
move-exception v0
invoke-static {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method