.class final Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;
.super Ljava/util/AbstractList;
.source "GraphObject.java"

# interfaces
.implements Lcom/facebook/model/GraphObjectList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/GraphObject$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GraphObjectListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;",
        "Lcom/facebook/model/GraphObjectList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final itemType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final state:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const-string v0, "state"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemType"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    iput-object p2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    return-void
.end method

.method private checkIndex(I)V
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_10
    return-void
.end method

.method private put(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    #calls: Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p2}, Lcom/facebook/model/GraphObject$Factory;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_4
    iget-object v2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    invoke-virtual {p0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->size()I

    move-result v0

    if-ge p1, v0, :cond_16

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only adding items at the end of the list is supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Lcom/facebook/model/GraphObjectList",
            "<TU;>;"
        }
    .end annotation

    const-class v1, Lcom/facebook/model/GraphObject;

    iget-object v2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object v0, p0

    :goto_13
    return-object v0

    :cond_14
    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-static {v1, p1}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    goto :goto_13

    :cond_1b
    new-instance v1, Lcom/facebook/FacebookGraphObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t cast GraphObjectCollection of non-GraphObject type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v1, 0x1

    :goto_3
    return v1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    const/4 v1, 0x0

    goto :goto_3

    :cond_10
    move-object v0, p1

    check-cast v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;

    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    iget-object v2, v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public get(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->checkIndex(I)V

    iget-object v2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getInnerJSONArray()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->checkIndex(I)V

    invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "GraphObjectList{itemType=%s, state=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->itemType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;->state:Lorg/json/JSONArray;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
