.class public Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
.super Lcom/fasterxml/jackson/databind/type/TypeBase;
.source "CollectionLikeType.java"


# static fields
.field private static final serialVersionUID:J = 0x3fffd755256ef9c2L


# instance fields
.field protected final _elementType:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Z)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_asStatic:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v1, :cond_25

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic containedType(I)Lcom/fasterxml/jackson/core/type/ResolvedType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public containedTypeCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public containedTypeName(I)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_5

    const-string v0, "E"

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v3, p1, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p1, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public bridge synthetic getContentType()Lcom/fasterxml/jackson/core/type/ResolvedType;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v0, ">;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public isCollectionLikeType()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isContainerType()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isTrueCollectionType()Z
    .registers 3

    const-class v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[collection-like type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_8
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .registers 8

    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .registers 8

    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_asStatic:Z

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .registers 7

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_asStatic:Z

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_4
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .registers 8

    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_valueHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_asStatic:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    move-result-object v0

    return-object v0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .registers 8

    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_asStatic:Z

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method
