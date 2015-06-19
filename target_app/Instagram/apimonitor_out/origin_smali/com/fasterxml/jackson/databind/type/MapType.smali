.class public final Lcom/fasterxml/jackson/databind/type/MapType;
.super Lcom/fasterxml/jackson/databind/type/MapLikeType;
.source "MapType.java"


# static fields
.field private static final serialVersionUID:J = -0xb41c5b2afd5e69cL


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method protected final _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_8
.end method

.method public final narrowKey(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_8
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[map type; class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_8
.end method

.method public final widenKey(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_8
.end method

.method public final bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .registers 9

    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .registers 9

    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final bridge synthetic withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .registers 9

    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final bridge synthetic withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .registers 9

    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/MapType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/MapType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapType;
    .registers 8

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_4
.end method

.method public final bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .registers 9

    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public final withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .registers 9

    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method
