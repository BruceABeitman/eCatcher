.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DateKD;
.super Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"
.field private static final serialVersionUID:J = 0x1L
.method protected constructor <init>()V
.registers 2
const-class v0, Ljava/util/Date;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public final _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
return-object v0
.end method