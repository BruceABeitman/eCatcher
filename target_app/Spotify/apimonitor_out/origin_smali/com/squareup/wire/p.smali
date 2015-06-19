.class final Lcom/squareup/wire/p;
.super Lcom/squareup/wire/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/squareup/wire/o",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:[Ljava/lang/Object;

.field c:I


# direct methods
.method private constructor <init>(Ljava/util/Map;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/squareup/wire/o;-><init>(Ljava/util/Map;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/wire/p;->c:I

    iput p2, p0, Lcom/squareup/wire/p;->c:I

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/squareup/wire/p;->b:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input map key is negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object v3, p0, Lcom/squareup/wire/p;->b:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v1

    goto :goto_16

    :cond_43
    return-void
.end method

.method public static a(Ljava/util/Map;I)Lcom/squareup/wire/p;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;I)",
            "Lcom/squareup/wire/p",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/wire/p;

    invoke-direct {v0, p0, p1}, Lcom/squareup/wire/p;-><init>(Ljava/util/Map;I)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/squareup/wire/p;->c:I

    if-le p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/squareup/wire/p;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_5
.end method

.method public final b(I)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/squareup/wire/p;->c:I

    if-le p1, v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/squareup/wire/p;->b:[Ljava/lang/Object;

    aget-object v1, v1, p1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method
