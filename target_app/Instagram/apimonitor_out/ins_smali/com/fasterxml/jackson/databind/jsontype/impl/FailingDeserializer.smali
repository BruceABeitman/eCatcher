.class public Lcom/fasterxml/jackson/databind/jsontype/impl/FailingDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "FailingDeserializer.java"
.field private static final serialVersionUID:J = 0x1L
.field protected final _message:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const-class v0, Ljava/lang/Object;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/FailingDeserializer;->_message:Ljava/lang/String;
return-void
.end method
.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/FailingDeserializer;->_message:Ljava/lang/String;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method