.class final Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;
.super Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.source "PropertySerializerMap.java"
.field private final _serializer1:Lcom/fasterxml/jackson/databind/JsonSerializer;
.field private final _serializer2:Lcom/fasterxml/jackson/databind/JsonSerializer;
.field private final _type1:Ljava/lang/Class;
.field private final _type2:Ljava/lang/Class;
.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 5
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer1:Lcom/fasterxml/jackson/databind/JsonSerializer;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer2:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public newWith(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.registers 8
const/4 v0, 0x2
new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;
const/4 v1, 0x0
new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer1:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
aput-object v2, v0, v1
const/4 v1, 0x1
new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer2:Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
aput-object v2, v0, v1
new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;-><init>([Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;)V
return-object v1
.end method
.method public serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;
if-ne p1, v0, :cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer1:Lcom/fasterxml/jackson/databind/JsonSerializer;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;
if-ne p1, v0, :cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer2:Lcom/fasterxml/jackson/databind/JsonSerializer;
goto :goto_6
:cond_e
const/4 v0, 0x0
goto :goto_6
.end method