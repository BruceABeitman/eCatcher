.class public Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "JacksonDeserializers.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/a/s;)V
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
return-object v0
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers$TokenBufferDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
move-result-object v0
return-object v0
.end method