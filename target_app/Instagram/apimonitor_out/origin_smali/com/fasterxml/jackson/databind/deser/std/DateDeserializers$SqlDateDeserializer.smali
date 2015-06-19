.class public Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
.source "DateDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer",
        "<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Ljava/sql/Date;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/sql/Date;
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;->_parseDate(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    goto :goto_7
.end method

.method protected bridge synthetic withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    move-result-object v0

    return-object v0
.end method

.method protected withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V

    return-object v0
.end method
