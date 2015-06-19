.class public Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer",
        "<",
        "Ljavax/xml/namespace/QName;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Ljavax/xml/namespace/QName;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ext/CoreXMLDeserializers$QNameDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljavax/xml/namespace/QName;
    .registers 4

    invoke-static {p1}, Ljavax/xml/namespace/QName;->valueOf(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method
