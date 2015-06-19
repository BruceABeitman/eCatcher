.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/net/URL;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URLDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/net/URL;
move-result-object v0
return-object v0
.end method
.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/net/URL;
.registers 4
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
return-object v0
.end method