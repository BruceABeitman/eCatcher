.class public Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/util/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/databind/util/Provider",
        "<",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<*>;>;"
    }
.end annotation


# static fields
.field static final _dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers;->_dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_6
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public provide()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
            "<*>;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;

    const/4 v1, 0x0

    new-instance v2, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
