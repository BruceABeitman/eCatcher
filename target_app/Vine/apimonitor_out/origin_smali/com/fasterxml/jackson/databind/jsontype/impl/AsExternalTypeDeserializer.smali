.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;
.source "AsExternalTypeDeserializer.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    return-void
.end method


# virtual methods
.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne p1, v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsExternalTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    move-object p0, v0

    goto :goto_4
.end method

.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method
