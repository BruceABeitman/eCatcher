.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"
.field static final instace:Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;->instace:Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/lang/Object;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
instance-of v0, p1, Ljava/util/Date;
if-eqz v0, :cond_a
check-cast p1, Ljava/util/Date;
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateKey(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_9
return-void
:cond_a
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
goto :goto_9
.end method