.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdKeySerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final instace:Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;


# direct methods
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


# virtual methods
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectStringFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonStringFormatVisitor;

    return-void
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 4

    const-string v0, "string"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 5

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateKey(Ljava/util/Date;Lcom/fasterxml/jackson/a/h;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    goto :goto_9
.end method
