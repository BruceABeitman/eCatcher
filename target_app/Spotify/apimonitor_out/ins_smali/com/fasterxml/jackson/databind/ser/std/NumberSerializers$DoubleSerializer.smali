.class public final Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$DoubleSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/NonTypedScalarSerializerBase;
.source "SourceFile"
.field static final instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$DoubleSerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$DoubleSerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$DoubleSerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$DoubleSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$DoubleSerializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/lang/Double;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/NonTypedScalarSerializerBase;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public final serialize(Ljava/lang/Double;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v0
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V
return-void
.end method
.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/lang/Double;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$DoubleSerializer;->serialize(Ljava/lang/Double;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method