.class public Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
.source "DateDeserializers.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final gregorianInstance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;


# instance fields
.field protected final _calendarClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    const-class v1, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->gregorianInstance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Calendar;
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_parseDate(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    if-nez v0, :cond_11

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_7

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    goto :goto_7

    :catch_2a
    move-exception v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->_calendarClass:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method protected withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    move-result-object v0

    return-object v0
.end method
