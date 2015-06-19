.class public Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "JacksonDeserializers.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/fasterxml/jackson/databind/JavaType;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_26
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->getEmptyValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;
:goto_1c
return-object v0
:cond_1d
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
goto :goto_1c
:cond_26
sget-object v1, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_31
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;
goto :goto_1c
:cond_31
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$JavaTypeDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method