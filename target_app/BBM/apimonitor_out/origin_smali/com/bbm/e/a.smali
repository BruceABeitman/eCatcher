.class public Lcom/bbm/e/a;
.super Lcom/bbm/util/b;
.source "ChannelAvatarLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/util/b",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/bbm/d/fd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field private c:Landroid/app/Activity;

.field private d:Lcom/bbm/ui/ObservingImageView;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bbm/ui/ObservingImageView;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/bbm/e/a;->k:I

    const/16 v0, 0x500

    iput v0, p0, Lcom/bbm/e/a;->l:I

    iput-object p1, p0, Lcom/bbm/e/a;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbm/e/a;->d:Lcom/bbm/ui/ObservingImageView;

    iput-object p3, p0, Lcom/bbm/e/a;->j:Ljava/lang/String;

    return-void
.end method

.method private varargs b()Lcom/bbm/d/fd;
    .registers 12

    const-wide/32 v9, 0x32000

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/io/File;

    iget-object v1, p0, Lcom/bbm/e/a;->j:Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v6, 0x200000

    cmp-long v1, v1, v6

    if-gez v1, :cond_47

    iget-object v1, p0, Lcom/bbm/e/a;->j:Ljava/lang/String;

    new-instance v2, Lcom/bbm/util/b/b;

    invoke-direct {v2}, Lcom/bbm/util/b/b;-><init>()V

    invoke-static {v1}, Lcom/bbm/util/bj;->f(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bbm/util/b/b;->b([B)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/bbm/e/a;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/bj;->f(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/ui/cl;->a([B)Lcom/bbm/ui/cl;

    move-result-object v1

    if-eqz v1, :cond_47

    new-instance v0, Lcom/bbm/d/fd;

    invoke-direct {v0, v1}, Lcom/bbm/d/fd;-><init>(Lcom/bbm/ui/cl;)V

    iput-boolean v3, p0, Lcom/bbm/e/a;->a:Z

    iget-object v1, p0, Lcom/bbm/e/a;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/bbm/e/a;->b:Ljava/lang/String;

    :cond_46
    :goto_46
    return-object v0

    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bbm/e/a;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_6e
    iget-object v1, p0, Lcom/bbm/e/a;->j:Ljava/lang/String;

    new-instance v2, Landroid/graphics/Point;

    iget v7, p0, Lcom/bbm/e/a;->k:I

    iget v8, p0, Lcom/bbm/e/a;->l:I

    invoke-direct {v2, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    const/4 v7, 0x0

    invoke-static {v1, v2, v7}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;Landroid/graphics/Point;Lcom/bbm/util/b/d;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_96

    iget-object v1, p0, Lcom/bbm/e/a;->j:Ljava/lang/String;

    new-instance v2, Landroid/graphics/Point;

    iget v7, p0, Lcom/bbm/e/a;->k:I

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/bbm/e/a;->l:I

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v2, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    const/4 v7, 0x0

    invoke-static {v1, v2, v7}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;Landroid/graphics/Point;Lcom/bbm/util/b/d;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_46

    :cond_96
    iget-object v1, p0, Lcom/bbm/e/a;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_9f} :catch_f7

    move-result v1

    if-le v1, v7, :cond_fd

    :try_start_a2
    iget-object v1, p0, Lcom/bbm/e/a;->j:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v8, 0x0

    invoke-static {v2, v1, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a2 .. :try_end_ac} :catch_d9
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_ac} :catch_f7

    move-result-object v1

    move-object v2, v1

    move v1, v3

    :goto_af
    :try_start_af
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-gtz v3, :cond_bf

    :cond_bd
    if-eqz v1, :cond_f2

    :cond_bf
    const/4 v1, 0x0

    const-wide/32 v3, 0x32000

    invoke-static {v2, v6, v1, v3, v4}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;ZJ)Z

    iput-object v6, p0, Lcom/bbm/e/a;->b:Ljava/lang/String;

    :goto_c8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bbm/e/a;->a:Z

    new-instance v1, Lcom/bbm/d/fd;

    iget-object v3, p0, Lcom/bbm/e/a;->c:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    goto/16 :goto_46

    :catch_d9
    move-exception v1

    invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_dd} :catch_f7

    :try_start_dd
    iget-object v1, p0, Lcom/bbm/e/a;->j:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    invoke-static {v2, v1, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_eb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_dd .. :try_end_eb} :catch_ef
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_eb} :catch_f7

    move-result-object v1

    move-object v2, v1

    move v1, v3

    goto :goto_af

    :catch_ef
    move-exception v1

    move v1, v4

    goto :goto_af

    :cond_f2
    :try_start_f2
    iget-object v1, p0, Lcom/bbm/e/a;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/bbm/e/a;->b:Ljava/lang/String;
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f6} :catch_f7

    goto :goto_c8

    :catch_f7
    move-exception v1

    invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_46

    :cond_fd
    move v1, v4

    goto :goto_af
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/bbm/e/a;->b()Lcom/bbm/d/fd;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bbm/d/fd;)V
    .registers 7

    if-eqz p1, :cond_60

    iget-object v0, p0, Lcom/bbm/e/a;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bbm/util/b/h;->a(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/bbm/e/a;->k:I

    iget-object v0, p0, Lcom/bbm/e/a;->b:Ljava/lang/String;

    iget v1, p0, Lcom/bbm/e/a;->k:I

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bbm/util/b/h;->c(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_27

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_2f

    :cond_27
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :cond_2f
    int-to-double v0, v1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v3, v3

    div-double/2addr v0, v3

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/bbm/e/a;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_61

    iget-object v0, p0, Lcom/bbm/e/a;->d:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/e/a;->j:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/bbm/util/b/h;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/bbm/e/a;->d:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_5b
    iget-object v0, p0, Lcom/bbm/e/a;->d:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, p1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/d/fd;)V

    :cond_60
    return-void

    :cond_61
    iget-object v1, p0, Lcom/bbm/e/a;->d:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/bbm/e/a;->k:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/bbm/e/a;->d:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5b
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/bbm/d/fd;

    invoke-virtual {p0, p1}, Lcom/bbm/e/a;->a(Lcom/bbm/d/fd;)V

    return-void
.end method
