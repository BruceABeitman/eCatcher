.class public Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "EnumSetDeserializer.java"
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.field private static final serialVersionUID:J = 0x304981f4d0f126c9L
.field protected final _enumClass:Ljava/lang/Class;
.field protected _enumDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected final _enumType:Lcom/fasterxml/jackson/databind/JavaType;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
.registers 4
const-class v0, Ljava/util/EnumSet;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->_enumType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->_enumClass:Ljava/lang/Class;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->_enumDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-void
.end method
.method private constructSet()Ljava/util/EnumSet;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->_enumClass:Ljava/lang/Class;
invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
move-result-object v0
return-object v0
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->_enumDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-nez v0, :cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->_enumType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
:goto_a
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->withDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;
move-result-object v0
return-object v0
:cond_f
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_a
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/EnumSet;
move-result-object v0
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/EnumSet;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z
move-result v0
if-nez v0, :cond_d
const-class v0, Ljava/util/EnumSet;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_d
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->constructSet()Ljava/util/EnumSet;
move-result-object v1
:goto_11
:cond_11
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v2, :cond_32
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v2, :cond_24
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->_enumClass:Ljava/lang/Class;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_24
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->_enumDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Enum;
if-eqz v0, :cond_11
invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
goto :goto_11
:cond_32
return-object v1
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 5
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public isCachable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public withDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->_enumDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;->_enumType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
move-object p0, v0
goto :goto_4
.end method