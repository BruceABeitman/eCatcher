.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;
.super Lcom/fasterxml/jackson/databind/KeyDeserializer;
.source "StdKeyDeserializer.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected final _delegate:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected final _keyClass:Ljava/lang/Class;
.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/KeyDeserializer;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_delegate:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-void
.end method
.method public final deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 7
if-nez p1, :cond_4
const/4 v0, 0x0
:cond_3
return-object v0
:try_start_4
:cond_4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_delegate:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v1
invoke-virtual {v0, v1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
:try_end_d
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_19
move-result-object v0
if-nez v0, :cond_3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;
const-string v1, "not a valid representation"
invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_19
move-exception v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "not a valid representation: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v1, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public getKeyClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;->_keyClass:Ljava/lang/Class;
return-object v0
.end method