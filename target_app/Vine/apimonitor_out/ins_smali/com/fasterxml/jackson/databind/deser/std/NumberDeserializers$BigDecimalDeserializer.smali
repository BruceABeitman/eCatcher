.class public Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "NumberDeserializers.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/math/BigDecimal;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/math/BigDecimal;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_c
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_11
:cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
:goto_10
return-object v0
:cond_11
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_35
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_25
const/4 v0, 0x0
goto :goto_10
:cond_25
:try_start_25
new-instance v0, Ljava/math/BigDecimal;
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
:try_end_2a
.catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_2a} :catch_2b
goto :goto_10
:catch_2b
move-exception v0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "not a valid representation"
invoke-virtual {p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_35
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$BigDecimalDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method