.class final Lcom/instagram/creation/photo/gallery/o;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/instagram/creation/photo/gallery/c;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/instagram/creation/photo/gallery/d;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/gallery/d;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/creation/photo/gallery/o;->b:Lcom/instagram/creation/photo/gallery/d;

    iput-object p2, p0, Lcom/instagram/creation/photo/gallery/o;->c:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/instagram/creation/photo/gallery/o;->a:Landroid/net/Uri;

    return-void
.end method

.method private h()Landroid/os/ParcelFileDescriptor;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/o;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/o;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/o;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/o;->a:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_1f

    :catch_2b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private i()Landroid/graphics/BitmapFactory$Options;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/o;->h()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1c

    invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_7

    :catchall_1c
    move-exception v0

    invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/Bitmap;
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/o;->h()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2}, Lcom/instagram/creation/photo/gallery/p;->a(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "UriImage"

    const-string v2, "got exception decoding bitmap "

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/o;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/o;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method public final e()I
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/o;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final f()I
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/o;->i()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final g()Z
    .registers 3

    const-string v0, "image/jpeg"

    invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
