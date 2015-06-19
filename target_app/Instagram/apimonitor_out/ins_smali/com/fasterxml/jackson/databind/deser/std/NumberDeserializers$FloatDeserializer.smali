.class public final Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;
.source "NumberDeserializers.java"
.field private static final primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer; = null
.field private static final serialVersionUID:J = 0x1L
.field private static final wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
const-class v1, Ljava/lang/Float;
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Float;)V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
return-void
.end method
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Float;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$1500()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->wrapperInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
return-object v0
.end method
.method static synthetic access$700()Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->primitiveInstance:Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
return-object v0
.end method
.method public final deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->_parseFloat(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;
move-result-object v0
return-object v0
.end method