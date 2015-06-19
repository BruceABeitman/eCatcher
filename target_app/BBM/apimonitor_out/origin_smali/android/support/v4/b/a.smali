.class public Landroid/support/v4/b/a;
.super Landroid/support/v4/b/n;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/b/n",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Landroid/support/v4/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/h",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/b/n;-><init>()V

    return-void
.end method

.method private b()Landroid/support/v4/b/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/b/h",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/b/a;->a:Landroid/support/v4/b/h;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v4/b/b;

    invoke-direct {v0, p0}, Landroid/support/v4/b/b;-><init>(Landroid/support/v4/b/a;)V

    iput-object v0, p0, Landroid/support/v4/b/a;->a:Landroid/support/v4/b/h;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/b/a;->a:Landroid/support/v4/b/h;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/b/a;->b()Landroid/support/v4/b/h;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v4/b/h;->b:Landroid/support/v4/b/j;

    if-nez v1, :cond_f

    new-instance v1, Landroid/support/v4/b/j;

    invoke-direct {v1, v0}, Landroid/support/v4/b/j;-><init>(Landroid/support/v4/b/h;)V

    iput-object v1, v0, Landroid/support/v4/b/h;->b:Landroid/support/v4/b/j;

    :cond_f
    iget-object v0, v0, Landroid/support/v4/b/h;->b:Landroid/support/v4/b/j;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/b/a;->b()Landroid/support/v4/b/h;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v4/b/h;->c:Landroid/support/v4/b/k;

    if-nez v1, :cond_f

    new-instance v1, Landroid/support/v4/b/k;

    invoke-direct {v1, v0}, Landroid/support/v4/b/k;-><init>(Landroid/support/v4/b/h;)V

    iput-object v1, v0, Landroid/support/v4/b/h;->c:Landroid/support/v4/b/k;

    :cond_f
    iget-object v0, v0, Landroid/support/v4/b/h;->c:Landroid/support/v4/b/k;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget v0, p0, Landroid/support/v4/b/a;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/b/n;->f:[I

    array-length v1, v1

    if-ge v1, v0, :cond_2d

    iget-object v1, p0, Landroid/support/v4/b/n;->f:[I

    iget-object v2, p0, Landroid/support/v4/b/n;->g:[Ljava/lang/Object;

    invoke-super {p0, v0}, Landroid/support/v4/b/n;->a(I)V

    iget v0, p0, Landroid/support/v4/b/n;->h:I

    if-lez v0, :cond_28

    iget-object v0, p0, Landroid/support/v4/b/n;->f:[I

    iget v3, p0, Landroid/support/v4/b/n;->h:I

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/b/n;->g:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/b/n;->h:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    iget v0, p0, Landroid/support/v4/b/n;->h:I

    invoke-static {v1, v2, v0}, Landroid/support/v4/b/n;->a([I[Ljava/lang/Object;I)V

    :cond_2d
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_4d
    return-void
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/b/a;->b()Landroid/support/v4/b/h;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v4/b/h;->d:Landroid/support/v4/b/m;

    if-nez v1, :cond_f

    new-instance v1, Landroid/support/v4/b/m;

    invoke-direct {v1, v0}, Landroid/support/v4/b/m;-><init>(Landroid/support/v4/b/h;)V

    iput-object v1, v0, Landroid/support/v4/b/h;->d:Landroid/support/v4/b/m;

    :cond_f
    iget-object v0, v0, Landroid/support/v4/b/h;->d:Landroid/support/v4/b/m;

    return-object v0
.end method
