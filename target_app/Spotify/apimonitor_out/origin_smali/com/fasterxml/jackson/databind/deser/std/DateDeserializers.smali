.class public Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    const/4 v1, 0x0

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;

    const-class v3, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimeZoneDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$TimeZoneDeserializer;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method
