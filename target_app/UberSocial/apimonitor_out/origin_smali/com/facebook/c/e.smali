.class final Lcom/facebook/c/e;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/c/h;


# instance fields
.field private final a:Lorg/json/JSONArray;

.field private final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/Class;)V
    .registers 4

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const-string v0, "state"

    invoke-static {p1, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemType"

    invoke-static {p2, v0}, Lcom/facebook/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/c/e;->a:Lorg/json/JSONArray;

    iput-object p2, p0, Lcom/facebook/c/e;->b:Ljava/lang/Class;

    return-void
.end method

.method private a(I)V
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/facebook/c/e;->a:Lorg/json/JSONArray;

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

.method private a(ILjava/lang/Object;)V
    .registers 5

    invoke-static {p2}, Lcom/facebook/c/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_4
    iget-object v1, p0, Lcom/facebook/c/e;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/facebook/c/h;
    .registers 5

    const-class v0, Lcom/facebook/c/c;

    iget-object v1, p0, Lcom/facebook/c/e;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/c/e;->b:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_12
    return-object p0

    :cond_13
    iget-object v0, p0, Lcom/facebook/c/e;->a:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/facebook/c/d;->a(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/c/h;

    move-result-object p0

    goto :goto_12

    :cond_1a
    new-instance v0, Lcom/facebook/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t cast GraphObjectCollection of non-GraphObject type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/c/e;->b:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/u;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/facebook/c/e;->a:Lorg/json/JSONArray;

    return-object v0
.end method

.method public add(ILjava/lang/Object;)V
    .registers 5

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    invoke-virtual {p0}, Lcom/facebook/c/e;->size()I

    move-result v0

    if-ge p1, v0, :cond_16

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only adding items at the end of the list is supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/facebook/c/e;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x0

    goto :goto_3

    :cond_10
    check-cast p1, Lcom/facebook/c/e;

    iget-object v0, p0, Lcom/facebook/c/e;->a:Lorg/json/JSONArray;

    iget-object v1, p1, Lcom/facebook/c/e;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1}, Lcom/facebook/c/e;->a(I)V

    iget-object v0, p0, Lcom/facebook/c/e;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/c/e;->b:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/c/d;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/c/e;->a:Lorg/json/JSONArray;

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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1}, Lcom/facebook/c/e;->a(I)V

    invoke-virtual {p0, p1}, Lcom/facebook/c/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/facebook/c/e;->a(ILjava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/c/e;->a:Lorg/json/JSONArray;

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

    iget-object v3, p0, Lcom/facebook/c/e;->b:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/c/e;->a:Lorg/json/JSONArray;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
