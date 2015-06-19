.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$UuidKD;
.super Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"
.field private static final serialVersionUID:J = 0x1L
.method protected constructor <init>()V
.registers 2
const-class v0, Ljava/util/UUID;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
move-result-object v0
return-object v0
.end method