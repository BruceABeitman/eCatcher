.class public Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "TokenBufferDeserializer.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer; = null
.field private static final serialVersionUID:J = 0x1L
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected createBufferInstance(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.registers 4
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;->createBufferInstance(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
move-result-object v0
return-object v0
.end method