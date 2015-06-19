.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;
.super Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"
.field private static final serialVersionUID:J = 0x1L
.method constructor <init>()V
.registers 2
const-class v0, Ljava/lang/Character;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Character;
.registers 5
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_11
const/4 v0, 0x0
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v0
return-object v0
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;->_keyClass:Ljava/lang/Class;
const-string v1, "can only convert 1-character Strings"
invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public bridge synthetic _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$CharKD;->_parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Character;
move-result-object v0
return-object v0
.end method