.class public final Lcom/bbm/util/b/a;
.super Lcom/bbm/util/b/g;
.source "ChannelImageFetcher.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p2}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/util/b/a;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/util/b/a;->a:Z

    return-void
.end method

.method private static a(IIII)I
    .registers 8

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    if-eqz p3, :cond_9

    if-nez p2, :cond_a

    :cond_9
    return v0

    :cond_a
    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I

    move-result v1

    :goto_12
    div-int v2, p1, v0

    if-gt v2, v1, :cond_1a

    div-int v2, p0, v0

    if-le v2, v1, :cond_1d

    :cond_1a
    mul-int/lit8 v0, v0, 0x2

    goto :goto_12

    :cond_1d
    if-gt p1, p3, :cond_21

    if-le p0, p2, :cond_9

    :cond_21
    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p0, 0x2

    :goto_25
    div-int v3, v1, v0

    if-le v3, p3, :cond_9

    div-int v3, v2, v0

    if-le v3, p2, :cond_9

    mul-int/lit8 v0, v0, 0x2

    goto :goto_25
.end method

.method public static a([BIILcom/bbm/util/b/d;ZZ)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v0, p0

    invoke-static {p0, v4, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p5, :cond_1c

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v3, p1, p2}, Lcom/bbm/util/b/a;->a(IIII)I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_1c
    if-eqz p4, :cond_31

    invoke-static {}, Lcom/bbm/util/fb;->b()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v3, "image/gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {v2, p3}, Lcom/bbm/util/b/h;->a(Landroid/graphics/BitmapFactory$Options;Lcom/bbm/util/b/d;)V

    :cond_31
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v3, "image/jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    :cond_4d
    const/4 v0, 0x0

    :try_start_4e
    array-length v3, p0

    invoke-static {p0, v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_82
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4e .. :try_end_52} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_76

    move-result-object v0

    if-nez v0, :cond_5c

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    array-length v0, p0

    invoke-static {p0, v4, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5c
    :goto_5c
    return-object v0

    :catch_5d
    move-exception v0

    :try_start_5e
    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    if-eqz p3, :cond_8a

    invoke-virtual {p3}, Lcom/bbm/util/b/d;->a()V

    const/4 v0, 0x0

    array-length v3, p0

    invoke-static {p0, v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_82

    move-result-object v0

    :goto_6c
    if-nez v0, :cond_5c

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    array-length v0, p0

    invoke-static {p0, v4, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5c

    :catch_76
    move-exception v0

    :try_start_77
    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_82

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    array-length v0, p0

    invoke-static {p0, v4, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5c

    :catchall_82
    move-exception v0

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    array-length v1, p0

    invoke-static {p0, v4, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    throw v0

    :cond_8a
    move-object v0, v1

    goto :goto_6c
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;IILandroid/widget/ImageView$ScaleType;)Lcom/bbm/d/fd;
    .registers 15

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-lez p2, :cond_6

    if-gtz p3, :cond_db

    :cond_6
    iget v1, p0, Lcom/bbm/util/b/a;->h:I

    iget v2, p0, Lcom/bbm/util/b/a;->i:I

    :goto_a
    check-cast p1, Ljava/lang/String;

    if-lez v1, :cond_9a

    if-lez v2, :cond_9a

    :try_start_10
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bbm/util/bj;->f(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/ui/cl;->a([B)Lcom/bbm/ui/cl;

    move-result-object v3

    if-eqz v3, :cond_35

    new-instance v0, Lcom/bbm/d/fd;

    invoke-direct {v0, v3}, Lcom/bbm/d/fd;-><init>(Lcom/bbm/ui/cl;)V

    :goto_34
    return-object v0

    :cond_35
    iget-object v3, p0, Lcom/bbm/util/b/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/bbm/util/b/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_9a

    new-instance v6, Lcom/bbm/d/fd;

    iget-object v3, p0, Lcom/bbm/util/b/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v3, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;

    iget-boolean v4, p0, Lcom/bbm/util/b/i;->j:Z

    iget-boolean v5, p0, Lcom/bbm/util/b/a;->a:Z

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/b/a;->a([BIILcom/bbm/util/b/d;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v6

    goto :goto_34

    :cond_68
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    invoke-static {v3, v0}, Lcom/bbm/util/ca;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/ui/cl;->a([B)Lcom/bbm/ui/cl;

    move-result-object v3

    if-eqz v3, :cond_9c

    new-instance v0, Lcom/bbm/d/fd;

    invoke-direct {v0, v3}, Lcom/bbm/d/fd;-><init>(Lcom/bbm/ui/cl;)V
    :try_end_88
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_88} :catch_89
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_88} :catch_d0

    goto :goto_34

    :catch_89
    move-exception v0

    const-string v1, "Couldn\'t process path %s, out of memory"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Lcom/bbm/util/b/d;->a()V

    :cond_9a
    :goto_9a
    const/4 v0, 0x0

    goto :goto_34

    :cond_9c
    :try_start_9c
    iget-object v3, p0, Lcom/bbm/util/b/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/bbm/util/b/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_9a

    new-instance v6, Lcom/bbm/d/fd;

    iget-object v3, p0, Lcom/bbm/util/b/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v3, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;

    iget-boolean v4, p0, Lcom/bbm/util/b/i;->j:Z

    iget-boolean v5, p0, Lcom/bbm/util/b/a;->a:Z

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/b/a;->a([BIILcom/bbm/util/b/d;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_cd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9c .. :try_end_cd} :catch_89
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_cd} :catch_d0

    move-object v0, v6

    goto/16 :goto_34

    :catch_d0
    move-exception v0

    const-string v1, "Couldn\'t process path %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_9a

    :cond_db
    move v2, p3

    move v1, p2

    goto/16 :goto_a
.end method

.method protected final a(Landroid/widget/ImageView;Lcom/bbm/d/fd;Ljava/lang/Object;)V
    .registers 7

    if-eqz p2, :cond_1e

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/util/b/g;->a(Landroid/widget/ImageView;Lcom/bbm/d/fd;Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/bbm/ui/ObservingImageView;

    if-eqz v0, :cond_1e

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_20

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1e
    return-void

    nop

    :array_20
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public final a(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .registers 5

    iget v0, p0, Lcom/bbm/util/b/a;->i:I

    if-lez v0, :cond_10

    iget v0, p0, Lcom/bbm/util/b/a;->h:I

    if-lez v0, :cond_10

    iget v0, p0, Lcom/bbm/util/b/a;->h:I

    iget v1, p0, Lcom/bbm/util/b/a;->i:I

    invoke-super {p0, p1, p2, v0, v1}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;II)V

    :goto_f
    return-void

    :cond_10
    invoke-super {p0, p1, p2}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    goto :goto_f
.end method
