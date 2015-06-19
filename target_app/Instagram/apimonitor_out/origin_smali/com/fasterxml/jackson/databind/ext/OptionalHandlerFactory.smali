.class public Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;
.super Ljava/lang/Object;
.source "OptionalHandlerFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CLASS_NAME_DOM_DOCUMENT:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final CLASS_NAME_DOM_NODE:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final DESERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers"

.field private static final DESERIALIZER_FOR_DOM_DOCUMENT:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer"

.field private static final DESERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer"

.field private static final PACKAGE_PREFIX_JAVAX_XML:Ljava/lang/String; = "javax.xml."

.field private static final SERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.CoreXMLSerializers"

.field private static final SERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.fasterxml.jackson.databind.ext.DOMSerializer"

.field public static final instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_19
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_8
    if-ge v2, v4, :cond_1a

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    array-length v4, v3

    move v2, v1

    :goto_1c
    if-ge v2, v4, :cond_29

    aget-object v5, v3, v2

    invoke-direct {p0, v5, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_29
    move v0, v1

    goto :goto_16
.end method

.method private hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_8
    if-ge v2, v4, :cond_1a

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    array-length v4, v3

    move v2, v1

    :goto_1c
    if-ge v2, v4, :cond_29

    aget-object v5, v3, v2

    invoke-direct {p0, v5, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_29
    move v0, v1

    goto :goto_16
.end method

.method private hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :goto_11
    return v0

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_5

    :cond_17
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    :cond_1b
    if-eqz p1, :cond_24

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_11

    :cond_24
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private instantiate(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    :goto_a
    const/4 v0, 0x0

    goto :goto_8

    :catch_c
    move-exception v0

    goto :goto_a
.end method


# virtual methods
.method public findDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "javax.xml."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "javax.xml."

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_19
    const-string v0, "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers"

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_47

    move-object v0, v1

    :goto_22
    return-object v0

    :cond_23
    const-string v2, "org.w3c.dom.Node"

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v0, "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer"

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_22

    :cond_34
    const-string v2, "org.w3c.dom.Node"

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer"

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_22

    :cond_45
    move-object v0, v1

    goto :goto_22

    :cond_47
    check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    goto :goto_22
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "javax.xml."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "javax.xml."

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_19
    const-string v0, "com.fasterxml.jackson.databind.ext.CoreXMLSerializers"

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_36

    move-object v0, v1

    :goto_22
    return-object v0

    :cond_23
    const-string v2, "org.w3c.dom.Node"

    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "com.fasterxml.jackson.databind.ext.DOMSerializer"

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;

    goto :goto_22

    :cond_34
    move-object v0, v1

    goto :goto_22

    :cond_36
    check-cast v0, Lcom/fasterxml/jackson/databind/ser/Serializers;

    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_22
.end method
