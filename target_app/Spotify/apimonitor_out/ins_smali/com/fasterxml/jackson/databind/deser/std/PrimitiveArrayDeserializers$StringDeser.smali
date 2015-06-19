.class final Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$StringDeser;
.super Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$Base;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>()V
.registers 2
const-class v0, [Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$Base;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method private final handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/String;
.registers 8
const/4 v0, 0x0
sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v1
if-nez v1, :cond_2b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v1, v2, :cond_24
sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v1
if-eqz v1, :cond_24
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_24
:goto_23
return-object v0
:cond_24
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$StringDeser;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_2b
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v3, v4, :cond_3b
:goto_37
aput-object v0, v1, v2
move-object v0, v1
goto :goto_23
:cond_3b
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$StringDeser;->_parseString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
move-result-object v0
goto :goto_37
.end method
.method public final bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$StringDeser;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/String;
.registers 9
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z
move-result v0
if-nez v0, :cond_c
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$StringDeser;->handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/String;
move-result-object v0
:goto_b
return-object v0
:cond_c
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
move-result-object v5
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;
move-result-object v0
move-object v2, v0
move v0, v1
:goto_16
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v3, v4, :cond_35
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v3, v4, :cond_30
const/4 v3, 0x0
:goto_23
array-length v4, v2
if-lt v0, v4, :cond_41
invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v2
move v4, v1
:goto_2b
add-int/lit8 v0, v4, 0x1
aput-object v3, v2, v4
goto :goto_16
:cond_30
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$StringDeser;->_parseString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
move-result-object v3
goto :goto_23
:cond_35
const-class v1, Ljava/lang/String;
invoke-virtual {v5, v2, v0, v1}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->returnObjectBuffer(Lcom/fasterxml/jackson/databind/util/ObjectBuffer;)V
goto :goto_b
:cond_41
move v4, v0
goto :goto_2b
.end method