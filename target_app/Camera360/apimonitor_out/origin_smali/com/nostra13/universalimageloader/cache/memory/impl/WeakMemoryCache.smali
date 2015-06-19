.class public Lcom/nostra13/universalimageloader/cache/memory/impl/WeakMemoryCache;
.super Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;
.source "WeakMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/memory/BaseMemoryCache;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/WeakMemoryCache;->createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;

    move-result-object v0

    return-object v0
.end method
