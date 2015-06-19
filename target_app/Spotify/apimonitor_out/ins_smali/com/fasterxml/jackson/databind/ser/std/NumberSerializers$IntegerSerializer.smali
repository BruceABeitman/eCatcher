.class public final Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$IntegerSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/NonTypedScalarSerializerBase;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/lang/Integer;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/NonTypedScalarSerializerBase;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public final serialize(Ljava/lang/Integer;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
return-void
.end method
.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/lang/Integer;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers$IntegerSerializer;->serialize(Ljava/lang/Integer;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method