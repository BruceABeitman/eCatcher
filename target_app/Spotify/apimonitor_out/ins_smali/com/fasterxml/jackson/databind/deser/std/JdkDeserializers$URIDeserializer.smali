.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/net/URI;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers$URIDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/net/URI;
move-result-object v0
return-object v0
.end method
.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/net/URI;
.registers 4
invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v0
return-object v0
.end method