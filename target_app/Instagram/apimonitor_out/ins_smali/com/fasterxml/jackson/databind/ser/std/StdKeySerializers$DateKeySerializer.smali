.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdKeySerializers.java"
.field protected static final instance:Lcom/fasterxml/jackson/databind/JsonSerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;->instance:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/util/Date;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/util/Date;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$DateKeySerializer;->serialize(Ljava/util/Date;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public serialize(Ljava/util/Date;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateKey(Ljava/util/Date;Lcom/fasterxml/jackson/a/h;)V
return-void
.end method