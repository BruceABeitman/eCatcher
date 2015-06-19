.class final Lcom/bbm/util/b/e;
.super Landroid/util/LruCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/bbm/d/fd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/util/b/d;


# direct methods
.method constructor <init>(Lcom/bbm/util/b/d;I)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/b/e;->a:Lcom/bbm/util/b/d;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    check-cast p3, Lcom/bbm/d/fd;

    instance-of v0, p3, Lcom/bbm/util/db;

    if-eqz v0, :cond_d

    check-cast p3, Lcom/bbm/util/db;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/bbm/util/db;->a(Z)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {}, Lcom/bbm/util/fb;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p3}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/util/b/e;->a:Lcom/bbm/util/b/d;

    invoke-static {v0}, Lcom/bbm/util/b/d;->a(Lcom/bbm/util/b/d;)Ljava/util/HashSet;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method protected final synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    const/4 v1, 0x1

    check-cast p2, Lcom/bbm/d/fd;

    iget-boolean v0, p2, Lcom/bbm/d/fd;->a:Z

    if-eqz v0, :cond_32

    invoke-virtual {p2}, Lcom/bbm/d/fd;->a()Lcom/bbm/ui/cl;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Lcom/bbm/ui/cl;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_4b

    invoke-virtual {v2}, Lcom/bbm/ui/cl;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_4b

    invoke-virtual {v2}, Lcom/bbm/ui/cl;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v2}, Lcom/bbm/ui/cl;->getIntrinsicHeight()I

    move-result v3

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x4

    div-int/lit16 v0, v0, 0x400

    :goto_26
    invoke-virtual {v2}, Lcom/bbm/ui/cl;->a()[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    add-int/2addr v0, v2

    :goto_2e
    if-lez v0, :cond_31

    move v1, v0

    :cond_31
    return v1

    :cond_32
    invoke-virtual {p2}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_49

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/b/d;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    goto :goto_2e

    :cond_49
    move v0, v1

    goto :goto_2e

    :cond_4b
    move v0, v1

    goto :goto_26
.end method
