.class public Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "CoreXMLDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer",
        "<",
        "Ljavax/xml/datatype/Duration;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;->instance:Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Ljavax/xml/datatype/Duration;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$DurationDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljavax/xml/datatype/Duration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers;->_dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method
