.class public final Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "StringArrayDeserializer.java"
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer; = null
.field private static final serialVersionUID:J = -0x69535cf715633df5L
.field protected _elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, [Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
.registers 3
const-class v0, [Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
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
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->_valueClass:Ljava/lang/Class;
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
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->_parseString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
move-result-object v0
goto :goto_37
.end method
.method protected final _deserializeCustom(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/String;
.registers 11
const/4 v2, 0x0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
move-result-object v5
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;
move-result-object v0
iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
move v1, v2
move-object v3, v0
:goto_d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v4, :cond_32
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v4, :cond_2a
const/4 v0, 0x0
move-object v4, v0
:goto_1b
array-length v0, v3
if-lt v1, v0, :cond_3e
invoke-virtual {v5, v3}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
move v3, v2
:goto_23
add-int/lit8 v0, v3, 0x1
aput-object v4, v1, v3
move-object v3, v1
move v1, v0
goto :goto_d
:cond_2a
invoke-virtual {v6, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
move-object v4, v0
goto :goto_1b
:cond_32
const-class v0, Ljava/lang/String;
invoke-virtual {v5, v3, v1, v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->returnObjectBuffer(Lcom/fasterxml/jackson/databind/util/ObjectBuffer;)V
return-object v0
:cond_3e
move v7, v1
move-object v1, v3
move v3, v7
goto :goto_23
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->findConvertingContentDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-nez v0, :cond_25
const-class v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
:goto_12
if-eqz v0, :cond_1b
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->isDefaultDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Z
move-result v1
if-eqz v1, :cond_1b
const/4 v0, 0x0
:cond_1b
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eq v1, v0, :cond_24
new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
:cond_24
return-object p0
:cond_25
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_12
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/String;
.registers 9
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z
move-result v0
if-nez v0, :cond_c
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/String;
move-result-object v0
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_15
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->_deserializeCustom(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/String;
move-result-object v0
goto :goto_b
:cond_15
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
move-result-object v5
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;
move-result-object v0
move-object v2, v0
move v0, v1
:goto_1f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v3, v4, :cond_47
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v3, v4, :cond_3c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v3
:goto_2f
array-length v4, v2
if-lt v0, v4, :cond_53
invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v2
move v4, v1
:goto_37
add-int/lit8 v0, v4, 0x1
aput-object v3, v2, v4
goto :goto_1f
:cond_3c
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v3, v4, :cond_42
const/4 v3, 0x0
goto :goto_2f
:cond_42
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->_parseString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
move-result-object v3
goto :goto_2f
:cond_47
const-class v1, Ljava/lang/String;
invoke-virtual {v5, v2, v0, v1}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->returnObjectBuffer(Lcom/fasterxml/jackson/databind/util/ObjectBuffer;)V
goto :goto_b
:cond_53
move v4, v0
goto :goto_37
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 5
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method