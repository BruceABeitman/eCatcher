.class public final Lcom/d/a/a/b/a/b;
.super Lcom/d/a/a/b/b;
.source "LRULimitedMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/d/a/a/b/b",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/d/a/a/b/b;-><init>(I)V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    const v2, 0x3f8ccccd

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/b/a/b;->a:Ljava/util/Map;

    return-void
.end method

.method private c()Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/d/a/a/b/a/b;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/d/a/a/b/a/b;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_25

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/d/a/a/b/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/d/a/a/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-super {p0, p1, p2}, Lcom/d/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/d/a/a/b/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/d/a/a/b/a/b;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/d/a/a/b/a/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/d/a/a/b/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected final synthetic c(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .registers 3

    check-cast p1, Landroid/graphics/Bitmap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final synthetic d(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
