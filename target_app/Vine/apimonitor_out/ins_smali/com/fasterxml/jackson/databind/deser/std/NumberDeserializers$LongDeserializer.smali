.class public final Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;
.source "NumberDeserializers.java"
.field private static final primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer; = null
.field private static final serialVersionUID:J = 0x1L
.field private static final wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
const-class v1, Ljava/lang/Long;
const-wide/16 v2, 0x0
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Long;)V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
return-void
.end method
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Long;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$1000()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
return-object v0
.end method
.method static synthetic access$200()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Long;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->_parseLong(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$LongDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method