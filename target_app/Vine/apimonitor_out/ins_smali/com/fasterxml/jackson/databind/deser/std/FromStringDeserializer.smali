.class public abstract Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "FromStringDeserializer.java"
.field private static final serialVersionUID:J = 0x1L
.method protected constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected abstract _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.end method
.method protected _deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Don\'t know how to convert embedded Object of type "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " into "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected _deserializeFromEmptyString()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 7
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_50
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_17
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_1c
:cond_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserializeFromEmptyString()Ljava/lang/Object;
move-result-object v0
:goto_1b
:cond_1b
return-object v0
:try_start_1c
:cond_1c
invoke-virtual {p0, v2, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
:try_end_1f
.catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1f} :catch_24
move-result-object v1
if-eqz v1, :cond_25
move-object v0, v1
goto :goto_1b
:catch_24
move-exception v0
:cond_25
const-string v1, "not a valid textual representation"
if-eqz v0, :cond_44
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " problem: "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_44
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v2, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v1
if-eqz v0, :cond_4f
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
:cond_4f
throw v1
:cond_50
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v1, v2, :cond_71
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_6c
move-object v0, v1
goto :goto_1b
:cond_6c
invoke-virtual {p0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_1b
:cond_71
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method