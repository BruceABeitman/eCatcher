.class public Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;
.super Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;
.source "FIFOLimitedMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;-><init>(I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->clear()V

    return-void
.end method

.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected bridge synthetic createReference(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .registers 3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method

.method protected getSize(Landroid/graphics/Bitmap;)I
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected bridge synthetic getSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method protected removeNext()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected bridge synthetic removeNext()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/FIFOLimitedMemoryCache;->removeNext()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
