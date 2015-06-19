.class public abstract Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.super Lcom/fasterxml/jackson/databind/KeyDeserializer;
.source "StdKeyDeserializer.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected final _keyClass:Ljava/lang/Class;
.method protected constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/KeyDeserializer;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;
return-void
.end method
.method protected abstract _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.end method
.method protected _parseDouble(Ljava/lang/String;)D
.registers 4
invoke-static {p1}, Lcom/fasterxml/jackson/a/c/h;->d(Ljava/lang/String;)D
move-result-wide v0
return-wide v0
.end method
.method protected _parseInt(Ljava/lang/String;)I
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method protected _parseLong(Ljava/lang/String;)J
.registers 4
invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public final deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 7
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
:cond_3
return-object v0
:try_start_4
:cond_4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
:try_end_7
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_c
move-result-object v1
if-eqz v1, :cond_27
move-object v0, v1
goto :goto_3
:catch_c
move-exception v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "not a valid representation: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v1, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_27
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z
move-result v1
if-eqz v1, :cond_3b
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v1
if-nez v1, :cond_3
:cond_3b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;
const-string v1, "not a valid representation"
invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public getKeyClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;
return-object v0
.end method