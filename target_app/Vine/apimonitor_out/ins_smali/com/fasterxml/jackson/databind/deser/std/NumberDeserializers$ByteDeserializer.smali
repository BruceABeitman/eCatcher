.class public final Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;
.source "NumberDeserializers.java"
.field private static final primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer; = null
.field private static final serialVersionUID:J = 0x1L
.field private static final wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
const-class v1, Ljava/lang/Byte;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Byte;)V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
return-void
.end method
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Byte;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$1300()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
return-object v0
.end method
.method static synthetic access$500()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Byte;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->_parseByte(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Byte;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$ByteDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Byte;
move-result-object v0
return-object v0
.end method