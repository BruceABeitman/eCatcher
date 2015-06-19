.class public Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.source "CalendarSerializer.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>(ZLjava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(ZLjava/text/DateFormat;)V
    .registers 4

    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;-><init>(Ljava/lang/Class;ZLjava/text/DateFormat;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _timestamp(Ljava/lang/Object;)J
    .registers 4

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_timestamp(Ljava/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _timestamp(Ljava/util/Calendar;)J
    .registers 4

    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    :cond_5
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_4
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->serialize(Ljava/util/Calendar;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Calendar;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 6

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_useTimestamp:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_timestamp(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(J)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_21

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    monitor-enter p3

    :try_start_13
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

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
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateValue(Ljava/util/Date;Lcom/fasterxml/jackson/a/h;)V

    goto :goto_b
.end method

.method public withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;
    .registers 6

    if-eqz p1, :cond_a

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>(ZLjava/text/DateFormat;)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>(ZLjava/text/DateFormat;)V

    goto :goto_9
.end method

.method public bridge synthetic withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->withFormat(ZLjava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    move-result-object v0

    return-object v0
.end method
