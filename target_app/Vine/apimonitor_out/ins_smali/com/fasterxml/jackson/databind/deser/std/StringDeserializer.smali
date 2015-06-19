.class public final Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "StringDeserializer.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer; = null
.field private static final serialVersionUID:J = 0x1L
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_7
:goto_6
return-object v0
:cond_7
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_2e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_17
const/4 v0, 0x0
goto :goto_6
:cond_17
instance-of v1, v0, [B
if-eqz v1, :cond_29
invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;
move-result-object v1
check-cast v0, [B
check-cast v0, [B
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encode([BZ)Ljava/lang/String;
move-result-object v0
goto :goto_6
:cond_29
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_6
:cond_2e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public bridge synthetic deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/String;
.registers 5
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method