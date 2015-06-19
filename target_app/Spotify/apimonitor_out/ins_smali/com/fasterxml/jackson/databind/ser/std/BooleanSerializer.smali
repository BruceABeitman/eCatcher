.class public final Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/NonTypedScalarSerializerBase;
.source "SourceFile"
.field final _forPrimitive:Z
.method public constructor <init>(Z)V
.registers 3
const-class v0, Ljava/lang/Boolean;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/NonTypedScalarSerializerBase;-><init>(Ljava/lang/Class;)V
iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;->_forPrimitive:Z
return-void
.end method
.method public final serialize(Ljava/lang/Boolean;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V
return-void
.end method
.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;->serialize(Ljava/lang/Boolean;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method