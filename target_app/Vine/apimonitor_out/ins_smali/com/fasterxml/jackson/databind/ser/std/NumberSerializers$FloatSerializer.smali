.class public final Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "NumberSerializers.java"
.field static final instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/lang/Float;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 5
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectNumberFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;
move-result-object v0
if-eqz v0, :cond_b
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonNumberFormatVisitor;->numberType(Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V
:cond_b
return-void
.end method
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 5
const-string v0, "number"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
return-object v0
.end method
.method public serialize(Ljava/lang/Float;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F
move-result v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V
return-void
.end method
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/lang/Float;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$FloatSerializer;->serialize(Ljava/lang/Float;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method