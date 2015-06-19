.class public final Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "NumberSerializers.java"
.field static final instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/lang/Long;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public final acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 5
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectIntegerFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;
move-result-object v0
if-eqz v0, :cond_b
sget v1, Lcom/fasterxml/jackson/a/o;->b:I
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonIntegerFormatVisitor;->numberType$351723a9(I)V
:cond_b
return-void
.end method
.method public final getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 5
const-string v0, "number"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
return-object v0
.end method
.method public final serialize(Ljava/lang/Long;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
move-result-wide v0
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(J)V
return-void
.end method
.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/lang/Long;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;->serialize(Ljava/lang/Long;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method