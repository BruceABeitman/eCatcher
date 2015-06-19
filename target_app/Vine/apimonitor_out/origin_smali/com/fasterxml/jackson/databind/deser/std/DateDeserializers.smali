.class public Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;
.super Ljava/lang/Object;
.source "DateDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimeZoneDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
    }
.end annotation


# static fields
.field private static final _classNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/Calendar;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-class v3, Ljava/util/GregorianCalendar;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/sql/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/sql/Timestamp;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/util/TimeZone;

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_29
    if-ge v0, v2, :cond_39

    aget-object v3, v1, v0

    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_39
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const-class v0, Ljava/util/Calendar;

    if-ne p0, v0, :cond_11

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    goto :goto_9

    :cond_11
    const-class v0, Ljava/util/Date;

    if-ne p0, v0, :cond_18

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;

    goto :goto_9

    :cond_18
    const-class v0, Ljava/sql/Date;

    if-ne p0, v0, :cond_1f

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    goto :goto_9

    :cond_1f
    const-class v0, Ljava/sql/Timestamp;

    if-ne p0, v0, :cond_26

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;

    goto :goto_9

    :cond_26
    const-class v0, Ljava/util/TimeZone;

    if-ne p0, v0, :cond_2d

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimeZoneDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimeZoneDeserializer;

    goto :goto_9

    :cond_2d
    const-class v0, Ljava/util/GregorianCalendar;

    if-ne p0, v0, :cond_34

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->gregorianInstance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    goto :goto_9

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: can\'t find deserializer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
