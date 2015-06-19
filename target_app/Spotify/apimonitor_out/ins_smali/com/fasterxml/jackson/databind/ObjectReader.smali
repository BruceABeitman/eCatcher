.class public Lcom/fasterxml/jackson/databind/ObjectReader;
.super Lcom/fasterxml/jackson/core/ObjectCodec;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType; = null
.field private static final serialVersionUID:J = -0x3b00292ca9aa7701L
.field protected final _config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
.field protected final _context:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.field protected final _dataFormatReaders:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.field protected final _injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;
.field protected final _jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
.field protected final _rootDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected final _rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
.field protected final _rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;
.field protected final _schema:Lcom/fasterxml/jackson/core/FormatSchema;
.field protected final _unwrapRoot:Z
.field protected final _valueToUpdate:Ljava/lang/Object;
.field protected final _valueType:Lcom/fasterxml/jackson/databind/JavaType;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/ObjectReader;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)V
.registers 9
invoke-direct {p0}, Lcom/fasterxml/jackson/core/ObjectCodec;-><init>()V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_context:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueToUpdate:Ljava/lang/Object;
if-eqz p4, :cond_29
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z
move-result v0
if-eqz v0, :cond_29
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not update an array value"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
iput-object p5, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;
iput-object p6, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->useRootWrapping()Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_unwrapRoot:Z
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectReader;->_prefetchRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_dataFormatReaders:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;)V
.registers 11
invoke-direct {p0}, Lcom/fasterxml/jackson/core/ObjectCodec;-><init>()V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->_context:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_context:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueToUpdate:Ljava/lang/Object;
if-eqz p5, :cond_2b
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z
move-result v0
if-eqz v0, :cond_2b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not update an array value"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2b
iput-object p6, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;
iput-object p7, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->useRootWrapping()Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_unwrapRoot:Z
iput-object p8, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_dataFormatReaders:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
return-void
.end method
.method protected static _initForReading(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
if-nez v0, :cond_13
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
if-nez v0, :cond_13
const-string v0, "No content to map due to end-of-input"
invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_13
return-object v0
.end method
.method protected _bind(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
invoke-static {p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_initForReading(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_1e
if-nez p2, :cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object p2
:goto_1a
:cond_1a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->clearCurrentToken()V
return-object p2
:cond_1e
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_1a
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_unwrapRoot:Z
if-eqz v2, :cond_3d
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p0, p1, v0, v2, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_unwrapAndDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;
move-result-object p2
goto :goto_1a
:cond_3d
if-nez p2, :cond_44
invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object p2
goto :goto_1a
:cond_44
invoke-virtual {v1, p1, v0, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1a
.end method
.method protected _bindAndClose(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V
:try_start_9
:cond_9
invoke-static {p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_initForReading(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_27
if-nez p2, :cond_23
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue()Ljava/lang/Object;
:try_end_22
.catchall {:try_start_9 .. :try_end_22} :catchall_51
move-result-object p2
:goto_23
:cond_23
:try_start_23
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
:goto_26
:try_end_26
.catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_56
return-object p2
:cond_27
:try_start_27
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_23
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_23
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_unwrapRoot:Z
if-eqz v2, :cond_46
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p0, p1, v0, v2, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_unwrapAndDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;
move-result-object p2
goto :goto_23
:cond_46
if-nez p2, :cond_4d
invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object p2
goto :goto_23
:cond_4d
invoke-virtual {v1, p1, v0, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_50
.catchall {:try_start_27 .. :try_end_50} :catchall_51
goto :goto_23
:catchall_51
move-exception v0
:try_start_52
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
:try_end_55
.catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_58
:goto_55
throw v0
:catch_56
move-exception v0
goto :goto_26
:catch_58
move-exception v1
goto :goto_55
.end method
.method protected _bindAsTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 5
invoke-static {p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_initForReading(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_10
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_10
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_16
:cond_10
sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;
:goto_12
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->clearCurrentToken()V
return-object v0
:cond_16
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/ObjectReader;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_unwrapRoot:Z
if-eqz v2, :cond_2f
sget-object v2, Lcom/fasterxml/jackson/databind/ObjectReader;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p0, p1, v0, v2, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_unwrapAndDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
goto :goto_12
:cond_2f
invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
goto :goto_12
.end method
.method protected final _findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
:goto_6
:cond_6
return-object v0
:cond_7
if-nez p2, :cond_11
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
const-string v1, "No value type configured for ObjectReader"
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-nez v0, :cond_6
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-nez v0, :cond_36
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not find a deserializer for type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_36
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_6
.end method
.method protected final _prefetchRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 6
const/4 v0, 0x0
if-eqz p2, :cond_d
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->EAGER_DESERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v1
if-nez v1, :cond_e
:cond_d
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-nez v0, :cond_d
const/4 v1, 0x0
:try_start_19
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v1
invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_d
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_2a
.catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_19 .. :try_end_2a} :catch_2b
goto :goto_d
:catch_2b
move-exception v1
goto :goto_d
.end method
.method protected _reportUndetectableSource(Ljava/lang/Object;)V
.registers 5
new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not use source of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " with format auto-detection: must be byte- not char-based"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
throw v0
.end method
.method protected _unwrapAndDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getRootName()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v0, p3, v1}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/io/SerializedString;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;
move-result-object v0
:cond_14
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_3e
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Current token not START_OBJECT (needed to unwrap root name \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'), but "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_3e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_68
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Current token not FIELD_NAME (to contain expected root name \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'), but "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_68
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_9a
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Root name \'"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' does not match expected (\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\') for type "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_9a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueToUpdate:Ljava/lang/Object;
if-nez v1, :cond_cf
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
:goto_a5
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_d7
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Current token not END_OBJECT (to match wrapper object with root name \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'), but "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_cf
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueToUpdate:Ljava/lang/Object;
invoke-virtual {p4, p1, p2, v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueToUpdate:Ljava/lang/Object;
goto :goto_a5
:cond_d7
return-object v1
.end method
.method protected final createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_context:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;
invoke-virtual {v0, p2, p1, v1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->createInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
move-result-object v0
return-object v0
.end method
.method public getFactory()Lcom/fasterxml/jackson/core/JsonFactory;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
return-object v0
.end method
.method public getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
return-object v0
.end method
.method public readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_bindAsTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public readValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueToUpdate:Ljava/lang/Object;
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->_bind(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->withType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public readValue(Ljava/lang/String;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_dataFormatReaders:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
if-eqz v0, :cond_7
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_reportUndetectableSource(Ljava/lang/Object;)V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueToUpdate:Ljava/lang/Object;
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_bindAndClose(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;
check-cast p1, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/core/ObjectCodec;)V
return-object v0
.end method
.method public treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;
.registers 6
:try_start_0
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
:try_end_7
.catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_7} :catch_9
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_b
move-result-object v0
return-object v0
:catch_9
move-exception v0
throw v0
:catch_b
move-exception v0
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;
.registers 11
if-eqz p1, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
:goto_a
return-object p0
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->_prefetchRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v4
iget-object v8, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_dataFormatReaders:Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
if-eqz v8, :cond_19
invoke-virtual {v8, p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
move-result-object v8
:cond_19
new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_valueToUpdate:Ljava/lang/Object;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_schema:Lcom/fasterxml/jackson/core/FormatSchema;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;
move-object v1, p0
move-object v3, p1
invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;)V
move-object p0, v0
goto :goto_a
.end method
.method public withType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectReader;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectReader;->withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;
move-result-object v0
return-object v0
.end method
.method public writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Not implemented for ObjectReader"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method