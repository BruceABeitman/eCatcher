.class public Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.source "DateSerializer.java"
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;-><init>(ZLjava/text/DateFormat;)V
return-void
.end method
.method public constructor <init>(ZLjava/text/DateFormat;)V
.registers 4
const-class v0, Ljava/util/Date;
invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;-><init>(Ljava/lang/Class;ZLjava/text/DateFormat;)V
return-void
.end method
.method protected bridge synthetic _timestamp(Ljava/lang/Object;)J
.registers 4
check-cast p1, Ljava/util/Date;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_timestamp(Ljava/util/Date;)J
move-result-wide v0
return-wide v0
.end method
.method protected _timestamp(Ljava/util/Date;)J
.registers 4
if-nez p1, :cond_5
const-wide/16 v0, 0x0
:goto_4
return-wide v0
:cond_5
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v0
goto :goto_4
.end method
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/util/Date;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->serialize(Ljava/util/Date;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public serialize(Ljava/util/Date;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_useTimestamp:Z
if-eqz v0, :cond_c
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_timestamp(Ljava/util/Date;)J
move-result-wide v0
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(J)V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_customFormat:Ljava/text/DateFormat;
if-eqz v0, :cond_21
iget-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_customFormat:Ljava/text/DateFormat;
monitor-enter p3
:try_start_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->_customFormat:Ljava/text/DateFormat;
invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V
monitor-exit p3
:try_end_1d
.catchall {:try_start_13 .. :try_end_1d} :catchall_1e
goto :goto_b
:catchall_1e
move-exception p1
monitor-exit p3
throw p1
:cond_21
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateValue(Ljava/util/Date;Lcom/fasterxml/jackson/a/h;)V
goto :goto_b
.end method
.method public withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
.registers 6
if-eqz p1, :cond_a
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;-><init>(ZLjava/text/DateFormat;)V
:goto_9
return-object v0
:cond_a
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
const/4 v1, 0x0
invoke-direct {v0, v1, p2}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;-><init>(ZLjava/text/DateFormat;)V
goto :goto_9
.end method
.method public bridge synthetic withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;
move-result-object v0
return-object v0
.end method