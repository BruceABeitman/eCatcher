.class public Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "UnrecognizedPropertyException.java"


# static fields
.field private static final MAX_DESC_LENGTH:I = 0xc8

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _propertiesAsString:Ljava/lang/String;

.field protected final _propertyIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _referringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _unrecognizedPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/j;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_referringClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_unrecognizedPropertyName:Ljava/lang/String;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_propertyIds:Ljava/util/Collection;

    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/a/l;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/a/l;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_42

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v3, v0

    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized field \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" (class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), not marked as ignorable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentLocation()Lcom/fasterxml/jackson/a/j;

    move-result-object v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->prependPath(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_10
.end method


# virtual methods
.method public getKnownPropertyIds()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_propertyIds:Ljava/util/Collection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_propertyIds:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_5
.end method

.method public getMessageSuffix()Ljava/lang/String;
    .registers 6

    const/16 v4, 0x22

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_propertiesAsString:Ljava/lang/String;

    if-nez v0, :cond_3e

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_propertyIds:Ljava/util/Collection;

    if-eqz v1, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_propertyIds:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    const-string v1, " (one known property: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_propertyIds:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_33
    :goto_33
    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_propertiesAsString:Ljava/lang/String;

    :cond_3e
    return-object v0

    :cond_3f
    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " known properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_propertyIds:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, ", \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_54

    const-string v1, " [truncated]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33
.end method

.method public getReferringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_referringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getUnrecognizedPropertyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->_unrecognizedPropertyName:Ljava/lang/String;

    return-object v0
.end method
