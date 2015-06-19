.class public final Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicReferenceSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"
.method public constructor <init>()V
.registers 3
const-class v0, Ljava/util/concurrent/atomic/AtomicReference;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V
return-void
.end method
.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicReferenceSerializer;->serialize(Ljava/util/concurrent/atomic/AtomicReference;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public final serialize(Ljava/util/concurrent/atomic/AtomicReference;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p3, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
return-void
.end method