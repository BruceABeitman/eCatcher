.class final Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;
.super Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.source "PropertySerializerMap.java"
.field private final _serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.field private final _type:Ljava/lang/Class;
.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public final newWith(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-direct {v0, v1, v2, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-object v0
.end method
.method public final serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;
if-ne p1, v0, :cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
:goto_6
return-object v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method