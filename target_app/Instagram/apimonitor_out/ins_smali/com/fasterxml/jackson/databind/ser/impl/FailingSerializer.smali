.class public final Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "FailingSerializer.java"
.field final _msg:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const-class v0, Ljava/lang/Object;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;
return-void
.end method
.method public final acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 3
return-void
.end method
.method public final getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public final serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
new-instance v0, Lcom/fasterxml/jackson/a/g;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/g;-><init>(Ljava/lang/String;)V
throw v0
.end method