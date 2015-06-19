.class public final Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "SourceFile"
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
.method public final serialize(Ljava/lang/Long;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
move-result-wide v0
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V
return-void
.end method
.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/lang/Long;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$LongSerializer;->serialize(Ljava/lang/Long;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method