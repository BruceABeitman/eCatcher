.class public final Lcom/bbm/util/b/d;
.super Ljava/lang/Object;
.source "ImageCache.java"


# static fields
.field private static final b:Landroid/graphics/Bitmap$CompressFormat;

.field private static e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/d/fd;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bbm/util/b/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/bbm/util/b/d;->b:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/util/b/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/util/b/d;->d:Lcom/bbm/util/b/f;

    invoke-static {}, Lcom/bbm/util/fb;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/b/d;->a:Ljava/util/HashSet;

    :cond_12
    new-instance v0, Lcom/bbm/util/b/e;

    iget-object v1, p0, Lcom/bbm/util/b/d;->d:Lcom/bbm/util/b/f;

    iget v1, v1, Lcom/bbm/util/b/f;->a:I

    invoke-direct {v0, p0, v1}, Lcom/bbm/util/b/e;-><init>(Lcom/bbm/util/b/d;I)V

    iput-object v0, p0, Lcom/bbm/util/b/d;->c:Landroid/util/LruCache;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-static {}, Lcom/bbm/util/fb;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_a
.end method

.method public static a(Lcom/bbm/util/b/f;Landroid/app/Activity;)Lcom/bbm/util/b/d;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/bbm/util/b/d;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/bbm/util/b/d;

    invoke-direct {v0, p0}, Lcom/bbm/util/b/d;-><init>(Lcom/bbm/util/b/f;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/bbm/util/b/d;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/bbm/util/b/d;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic b()Landroid/graphics/Bitmap$CompressFormat;
    .registers 1

    sget-object v0, Lcom/bbm/util/b/d;->b:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/bbm/d/fd;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/util/b/d;->c:Landroid/util/LruCache;

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/bbm/util/b/d;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fd;

    :cond_d
    return-object v0
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/util/b/d;->c:Landroid/util/LruCache;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bbm/util/b/d;->c:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/bbm/util/b/d;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_e
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 3

    if-eqz p1, :cond_20

    sget-object v0, Lcom/bbm/util/b/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/bbm/util/b/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/bbm/util/b/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    invoke-virtual {p0}, Lcom/bbm/util/b/d;->a()V

    :cond_20
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/bbm/d/fd;)V
    .registers 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/bbm/util/b/d;->c:Landroid/util/LruCache;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lcom/bbm/util/db;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lcom/bbm/util/db;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bbm/util/db;->a(Z)V

    :cond_14
    iget-object v0, p0, Lcom/bbm/util/b/d;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method
