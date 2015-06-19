.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$CalendarKeySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdKeySerializers.java"
.field protected static final instance:Lcom/fasterxml/jackson/databind/JsonSerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$CalendarKeySerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$CalendarKeySerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$CalendarKeySerializer;->instance:Lcom/fasterxml/jackson/databind/JsonSerializer;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, Ljava/util/Calendar;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/util/Calendar;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$CalendarKeySerializer;->serialize(Ljava/util/Calendar;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public serialize(Ljava/util/Calendar;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v0
invoke-virtual {p3, v0, v1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateKey(JLcom/fasterxml/jackson/a/h;)V
return-void
.end method