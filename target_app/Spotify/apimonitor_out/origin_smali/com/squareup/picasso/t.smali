.class final Lcom/squareup/picasso/t;
.super Lcom/squareup/picasso/d;
.source "SourceFile"


# instance fields
.field o:I

.field private final p:Lcom/squareup/picasso/Downloader;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;Lcom/squareup/picasso/Downloader;)V
    .registers 9

    invoke-direct/range {p0 .. p5}, Lcom/squareup/picasso/d;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V

    iput-object p6, p0, Lcom/squareup/picasso/t;->p:Lcom/squareup/picasso/Downloader;

    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/picasso/t;->o:I

    iget-object v0, p1, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/squareup/picasso/am;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/picasso/t$1;

    invoke-direct {v1, p0}, Lcom/squareup/picasso/t$1;-><init>(Lcom/squareup/picasso/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method


# virtual methods
.method final a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
    .registers 9

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/squareup/picasso/t;->o:I

    if-nez v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    iget-object v2, p0, Lcom/squareup/picasso/t;->p:Lcom/squareup/picasso/Downloader;

    iget-object v3, p1, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;

    invoke-interface {v2, v3, v0}, Lcom/squareup/picasso/Downloader;->a(Landroid/net/Uri;Z)Lcom/squareup/picasso/n;

    move-result-object v2

    iget-boolean v0, v2, Lcom/squareup/picasso/n;->c:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    :goto_17
    iput-object v0, p0, Lcom/squareup/picasso/t;->l:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iget-object v0, v2, Lcom/squareup/picasso/n;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_21

    :goto_1d
    return-object v0

    :cond_1e
    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->c:Lcom/squareup/picasso/Picasso$LoadedFrom;

    goto :goto_17

    :cond_21
    iget-object v3, v2, Lcom/squareup/picasso/n;->a:Ljava/io/InputStream;

    if-nez v3, :cond_27

    move-object v0, v1

    goto :goto_1d

    :cond_27
    iget-wide v0, v2, Lcom/squareup/picasso/n;->d:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_38

    invoke-static {v3}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received response with 0 content-length header."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    iget-object v0, p0, Lcom/squareup/picasso/t;->l:Lcom/squareup/picasso/Picasso$LoadedFrom;

    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->c:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-ne v0, v1, :cond_58

    iget-wide v0, v2, Lcom/squareup/picasso/n;->d:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_58

    iget-object v0, p0, Lcom/squareup/picasso/t;->d:Lcom/squareup/picasso/af;

    iget-wide v1, v2, Lcom/squareup/picasso/n;->d:J

    iget-object v4, v0, Lcom/squareup/picasso/af;->c:Landroid/os/Handler;

    iget-object v0, v0, Lcom/squareup/picasso/af;->c:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_58
    :try_start_58
    new-instance v0, Lcom/squareup/picasso/s;

    invoke-direct {v0, v3}, Lcom/squareup/picasso/s;-><init>(Ljava/io/InputStream;)V

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/s;->a(I)J

    move-result-wide v1

    invoke-static {p1}, Lcom/squareup/picasso/t;->b(Lcom/squareup/picasso/ab;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/t;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v5

    invoke-static {v0}, Lcom/squareup/picasso/am;->c(Ljava/io/InputStream;)Z

    move-result v6

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/s;->a(J)V

    if-eqz v6, :cond_90

    invoke-static {v0}, Lcom/squareup/picasso/am;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v5, :cond_86

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/squareup/picasso/ab;->f:I

    iget v2, p1, Lcom/squareup/picasso/ab;->g:I

    invoke-static {v1, v2, v4}, Lcom/squareup/picasso/t;->a(IILandroid/graphics/BitmapFactory$Options;)V

    :cond_86
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_8b
    .catchall {:try_start_58 .. :try_end_8b} :catchall_af

    move-result-object v0

    :cond_8c
    invoke-static {v3}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    goto :goto_1d

    :cond_90
    if-eqz v5, :cond_a0

    const/4 v5, 0x0

    :try_start_93
    invoke-static {v0, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, p1, Lcom/squareup/picasso/ab;->f:I

    iget v6, p1, Lcom/squareup/picasso/ab;->g:I

    invoke-static {v5, v6, v4}, Lcom/squareup/picasso/t;->a(IILandroid/graphics/BitmapFactory$Options;)V

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/s;->a(J)V

    :cond_a0
    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to decode stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_af
    .catchall {:try_start_93 .. :try_end_af} :catchall_af

    :catchall_af
    move-exception v0

    invoke-static {v3}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method final a(Landroid/net/NetworkInfo;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/squareup/picasso/t;->o:I

    if-lez v2, :cond_a

    move v2, v1

    :goto_7
    if-nez v2, :cond_c

    :cond_9
    :goto_9
    return v0

    :cond_a
    move v2, v0

    goto :goto_7

    :cond_c
    iget v2, p0, Lcom/squareup/picasso/t;->o:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/picasso/t;->o:I

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_1a
    move v0, v1

    goto :goto_9
.end method

.method final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
