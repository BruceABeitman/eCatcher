.class public Lcom/twidroid/net/a/b/b;
.super Lcom/ubermedia/net/d;
.source "SourceFile"


# static fields
.field private static a:[Ljavax/net/ssl/TrustManager; = null

.field public static final i:Ljava/lang/String; = "PhotoProvider"

.field protected static final k:I = 0x2e630

.field protected static final l:I = 0x2ee0

.field static final m:I = 0x4000


# instance fields
.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:I

.field e:J

.field protected f:Z

.field protected g:Lorg/apache/http/client/methods/HttpPost;

.field protected h:Lorg/apache/http/impl/client/DefaultHttpClient;

.field j:I

.field protected n:Landroid/graphics/Bitmap;

.field o:Lcom/twidroid/model/twitter/c;

.field p:Ljava/net/HttpURLConnection;

.field q:Ljavax/net/ssl/HttpsURLConnection;

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/twidroid/model/twitter/c;I)V
    .registers 4

    invoke-direct {p0}, Lcom/ubermedia/net/d;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/net/a/b/b;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/net/a/b/b;->r:Z

    iput-object p1, p0, Lcom/twidroid/net/a/b/b;->o:Lcom/twidroid/model/twitter/c;

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/a/b/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/a/b/b;->c:Ljava/lang/String;

    iput p2, p0, Lcom/twidroid/net/a/b/b;->d:I

    return-void
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;I)I
    .registers 12

    const/16 v0, 0x400

    const/16 v1, 0x280

    const/16 v2, 0x140

    const/4 v3, 0x1

    const-wide/high16 v8, 0x4000

    packed-switch p1, :pswitch_data_8e

    :pswitch_c
    move v0, v2

    move v1, v2

    :goto_e
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v2, v0, :cond_25

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v2, v1, :cond_81

    :cond_25
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v2, v5, :cond_86

    move v2, v3

    :goto_36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_88

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v0, v1, v0

    int-to-double v0, v0

    :goto_45
    const-string v2, "PhotoProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inSample: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v3, v0

    :cond_81
    return v3

    :pswitch_82
    move v1, v0

    goto :goto_e

    :pswitch_84
    move v0, v1

    goto :goto_e

    :cond_86
    const/4 v2, 0x0

    goto :goto_36

    :cond_88
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    goto :goto_45

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_82
        :pswitch_c
        :pswitch_84
    .end packed-switch
.end method

.method public static a(Ljava/io/File;I)I
    .registers 12

    const/16 v1, 0x280

    const/16 v0, 0x1f4

    const/16 v2, 0x140

    const/4 v3, 0x1

    const-wide/high16 v8, 0x4000

    if-nez p1, :cond_c

    :cond_b
    :goto_b
    return v3

    :cond_c
    packed-switch p1, :pswitch_data_94

    :pswitch_f
    move v0, v2

    move v1, v2

    :goto_11
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v2, v0, :cond_27

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v2, v1, :cond_b

    :cond_27
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v2, v5, :cond_8d

    move v2, v3

    :goto_38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8f

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v0, v1, v0

    int-to-double v0, v0

    :goto_47
    const-string v2, "PhotoProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inSample: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v3, v0

    goto :goto_b

    :pswitch_84
    const/16 v1, 0x400

    const/16 v0, 0x400

    goto :goto_11

    :pswitch_89
    move v1, v0

    goto :goto_11

    :pswitch_8b
    move v0, v1

    goto :goto_11

    :cond_8d
    const/4 v2, 0x0

    goto :goto_38

    :cond_8f
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    goto :goto_47

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_84
        :pswitch_f
        :pswitch_8b
        :pswitch_f
        :pswitch_f
        :pswitch_89
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/twidroid/net/a/b/b;->b(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const-string v0, "PhotoProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d6

    :try_start_2a
    invoke-static {p0, p1}, Lcom/twidroid/net/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/twidroid/net/a/b/b;->a(Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const-string v0, "PhotoProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InSampleSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PhotoProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InSampleSizeAfter Decode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for filesize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8e

    const/16 v0, 0x10

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_8e
    const-string v4, "PhotoProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FinalSampleSizeAfter Decode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_a8} :catch_ca

    :goto_a8
    if-eqz v0, :cond_c9

    if-eqz v2, :cond_c9

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_c8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c8
    move-object v0, v1

    :cond_c9
    return-object v0

    :catch_ca
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Upload failed"

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d6
    const-string v0, "PhotoProvider"

    const-string v4, "Open File"

    invoke-static {v0, v4}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v4, "file://"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/twidroid/net/a/b/b;->a(Ljava/io/File;I)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const-string v0, "file://"

    const-string v4, ""

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a8
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_fa

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HERO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAGIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fa

    :cond_42
    const-string v0, "PhotoProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filesize is 0 for file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v0, "/sdcard/DCIM/100MEDIA"

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_bf

    const-string v0, "PhotoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  has no children  exist: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_92
    if-eqz v1, :cond_fa

    const-string v0, "PhotoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using last modified file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_be
    return-object v0

    :cond_bf
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_c2
    array-length v1, v5

    if-ge v2, v1, :cond_fc

    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_f5

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_f6

    :cond_f5
    move-object v0, v1

    :cond_f6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_c2

    :cond_fa
    move-object v0, v3

    goto :goto_be

    :cond_fc
    move-object v1, v0

    goto :goto_92
.end method

.method public static final a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;I)Lcom/twidroid/net/a/b/b;
    .registers 4

    const-string v0, "yfrog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/twidroid/net/a/b/o;

    invoke-direct {v0, p0, p2}, Lcom/twidroid/net/a/b/o;-><init>(Lcom/twidroid/model/twitter/c;I)V

    :goto_d
    return-object v0

    :cond_e
    const-string v0, "TwidVidcom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/twidroid/net/a/d/c;

    invoke-direct {v0, p0}, Lcom/twidroid/net/a/d/c;-><init>(Lcom/twidroid/model/twitter/c;)V

    goto :goto_d

    :cond_1c
    const-string v0, "native"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Lcom/twidroid/net/a/b/a;

    invoke-direct {v0, p0, p2}, Lcom/twidroid/net/a/b/a;-><init>(Lcom/twidroid/model/twitter/c;I)V

    goto :goto_d

    :cond_2a
    new-instance v0, Lcom/twidroid/net/a/b/a;

    invoke-direct {v0, p0, p2}, Lcom/twidroid/net/a/b/a;-><init>(Lcom/twidroid/model/twitter/c;I)V

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/io/File;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "upload_image"

    const-string v2, "jpg"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-object v0
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_d

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    goto :goto_c

    :catch_12
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "twitpic.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://twitpic.com/show/large"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "twitgoo.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_49
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phodroid.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://phodroid.s3.amazonaws.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_73
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yfrog.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":iphone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_97
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tweetphoto.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bb

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plixi.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bb

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lockerz.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d4

    :cond_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.plixi.com/api/TPAPI.svc/imagefromurl?size=big&url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    :cond_d4
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "twimg.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e6

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    :cond_e6
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mypict.me"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Lcom/ubermedia/ui/b;->l:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://mypict.me/getthumb.php?id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&size=500"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head><title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</title></head><body style=\"margin:0;border:0;\"><img src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" border=\"0\" /></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/twidroid/net/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)I
    .registers 8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_23

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "orientation"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    :try_start_24
    new-instance v1, Landroid/media/ExifInterface;

    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3a} :catch_48

    move-result v1

    packed-switch v1, :pswitch_data_4e

    goto :goto_22

    :pswitch_3f
    const/16 v0, 0xb4

    goto :goto_22

    :pswitch_42
    const/16 v0, 0x5a

    goto :goto_22

    :pswitch_45
    const/16 v0, -0x5a

    goto :goto_22

    :catch_48
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    nop

    :pswitch_data_4e
    .packed-switch 0x3
        :pswitch_3f
        :pswitch_3f
        :pswitch_45
        :pswitch_42
    .end packed-switch
.end method

.method public static b(Ljava/io/File;I)I
    .registers 12

    const/4 v0, 0x1

    const-wide/high16 v8, 0x4000

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v2, p1, :cond_19

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v2, p1, :cond_73

    :cond_19
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v2, v3, :cond_74

    :goto_29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_76

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v0, p1

    int-to-double v0, v0

    :goto_37
    const-string v2, "PhotoProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inSample: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :cond_73
    return v0

    :cond_74
    const/4 v0, 0x0

    goto :goto_29

    :cond_76
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, p1

    int-to-double v0, v0

    goto :goto_37
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    iget v0, p0, Lcom/twidroid/net/a/b/b;->d:I

    invoke-static {p1, p2, v0}, Lcom/twidroid/net/a/b/b;->a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I[Lorg/apache/http/Header;)Lcom/twidroid/net/a/b/e;
    .registers 12

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->o:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->n()Z

    move-result v0

    if-eqz v0, :cond_cf

    if-eqz p3, :cond_cf

    iput-boolean v3, p0, Lcom/twidroid/net/a/b/b;->r:Z

    sget-object v0, Lcom/twidroid/net/a/b/b;->a:[Ljavax/net/ssl/TrustManager;

    if-nez v0, :cond_27

    new-array v0, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/ubermedia/net/g;

    invoke-direct {v4}, Lcom/ubermedia/net/g;-><init>()V

    aput-object v4, v0, v3

    sput-object v0, Lcom/twidroid/net/a/b/b;->a:[Ljavax/net/ssl/TrustManager;

    :cond_27
    :try_start_27
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27 .. :try_end_2c} :catch_a4
    .catch Ljava/security/KeyManagementException; {:try_start_27 .. :try_end_2c} :catch_b2

    move-result-object v0

    const/4 v1, 0x0

    :try_start_2e
    sget-object v3, Lcom/twidroid/net/a/b/b;->a:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_38} :catch_12b
    .catch Ljava/security/KeyManagementException; {:try_start_2e .. :try_end_38} :catch_129

    :goto_38
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :try_start_47
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "Content-Type"

    const-string v3, "multipart/form-data; boundary=AaB03x"

    invoke-virtual {v0, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    const v1, 0x2e630

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x2ee0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    new-instance v1, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v1}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    if-nez p5, :cond_94

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/twidroid/net/a/b/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/twidroid/net/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)V

    :cond_94
    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {p5, v0}, Lcom/twidroid/net/a/b/b;->a([Lorg/apache/http/Header;Ljava/net/URLConnection;)V

    new-instance v0, Lcom/twidroid/net/a/b/e;

    iget-object v1, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, v1, p1}, Lcom/twidroid/net/a/b/e;-><init>(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_a0} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_a0} :catch_c8

    :goto_a0
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    return-object v0

    :catch_a4
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_a8
    const-string v3, "allowAllSSL"

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :catch_b2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_b6
    const-string v3, "allowAllSSL"

    invoke-virtual {v1}, Ljava/security/KeyManagementException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    :catch_c1
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_c8
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_cf
    :try_start_cf
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/twidroid/net/a/b/b;->p:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->p:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->p:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->p:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->p:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v3, "multipart/form-data; boundary=AaB03x"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->p:Ljava/net/HttpURLConnection;

    const v1, 0x2e630

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->p:Ljava/net/HttpURLConnection;

    const/16 v1, 0x2ee0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    if-nez p5, :cond_112

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/twidroid/net/a/b/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/twidroid/net/a/b/b;->p:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/twidroid/net/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)V

    :cond_112
    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->p:Ljava/net/HttpURLConnection;

    invoke-static {p5, v0}, Lcom/twidroid/net/a/b/b;->a([Lorg/apache/http/Header;Ljava/net/URLConnection;)V

    new-instance v0, Lcom/twidroid/net/a/b/e;

    iget-object v1, p0, Lcom/twidroid/net/a/b/b;->p:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1, p1}, Lcom/twidroid/net/a/b/e;-><init>(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_11e} :catch_11f

    goto :goto_a0

    :catch_11f
    move-exception v0

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_129
    move-exception v1

    goto :goto_b6

    :catch_12b
    move-exception v1

    goto/16 :goto_a8
.end method

.method public a(Ljava/lang/String;Landroid/os/Handler;Lcom/twidroid/net/a/b/e;Landroid/graphics/Bitmap;)Ljava/io/OutputStream;
    .registers 9

    :try_start_0
    new-instance v0, Lcom/twidroid/net/a/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twidroid/net/a/b/d;-><init>(Lcom/twidroid/net/a/b/b$1;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p4, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Lcom/twidroid/net/a/b/d;->a()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/twidroid/net/a/b/e;->a(I)V

    const-string v0, "--AaB03x\r\n"

    const-string v0, "--AaB03x\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/twidroid/net/a/b/e;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "image.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/twidroid/net/a/b/e;->a(I)V

    const-string v1, "Content-Type: image/jpeg\r\n"

    const-string v1, "Content-Type: image/jpeg\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/twidroid/net/a/b/e;->a(I)V

    const-string v1, "\r\n"

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/twidroid/net/a/b/e;->a(I)V

    const-string v1, "\r\n--AaB03x--\r\n"

    const-string v1, "\r\n--AaB03x--\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/twidroid/net/a/b/e;->a(I)V

    invoke-virtual {p3}, Lcom/twidroid/net/a/b/e;->a()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "--AaB03x\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "Content-Type: image/jpeg\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "PhotoProvider"

    const-string v2, "Upload plixi... 10"

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3c

    const-wide/16 v2, 0x32

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "PhotoProvider"

    const-string v2, "Upload plixi before compress..."

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p4, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v0, "PhotoProvider"

    const-string v2, "Upload plixi after compress..."

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_ba} :catch_e6

    :try_start_ba
    const-string v0, "PhotoProvider"

    const-string v2, "Upload plixi before write..."

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\r\n--AaB03x--\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    const-string v0, "PhotoProvider"

    const-string v2, "Upload plixi finalizing..."

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_d7} :catch_dd

    const/16 v0, 0x50

    :try_start_d9
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v1

    :catch_dd
    move-exception v0

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Upload failed - BM2"

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_e6} :catch_e6

    :catch_e6
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/a/b/e;Landroid/os/Handler;Landroid/app/Activity;)Ljava/io/OutputStream;
    .registers 12

    const/4 v0, 0x0

    const-string v1, "content:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "file:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fb

    :cond_11
    invoke-static {p5, p2}, Lcom/twidroid/net/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/twidroid/net/a/b/e;->a(I)V

    const-string v1, "--AaB03x\r\n"

    const-string v1, "--AaB03x\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/twidroid/net/a/b/e;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"; filename=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/twidroid/net/a/b/e;->a(I)V

    const-string v3, "Content-Type: image/jpeg\r\n"

    const-string v3, "Content-Type: image/jpeg\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/twidroid/net/a/b/e;->a(I)V

    const-string v3, "\r\n"

    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/twidroid/net/a/b/e;->a(I)V

    const-string v3, "\r\n--AaB03x--\r\n"

    const-string v3, "\r\n--AaB03x--\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/twidroid/net/a/b/e;->a(I)V

    invoke-virtual {p3}, Lcom/twidroid/net/a/b/e;->a()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "--AaB03x\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    const-string v1, "Content-Type: image/jpeg\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0x5a

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v4

    div-int/lit16 v4, v4, 0x1f40

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v1, v4

    iput v1, p0, Lcom/twidroid/net/a/b/b;->j:I

    const/16 v1, 0x1f40

    new-array v1, v1, [B

    :goto_ae
    :try_start_ae
    invoke-virtual {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_e0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    array-length v4, v1

    add-int/2addr v0, v4

    iget v4, p0, Lcom/twidroid/net/a/b/b;->j:I

    mul-int/2addr v4, v0

    invoke-virtual {p4, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_c3} :catch_c4

    goto :goto_ae

    :catch_c4
    move-exception v0

    const-string v1, "PhotoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e0
    :try_start_e0
    const-string v0, "\r\n--AaB03x--\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_ec} :catch_f2

    const/16 v0, 0x50

    invoke-virtual {p4, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v3

    :catch_f2
    move-exception v0

    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "Upload failed"

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fb
    new-instance v0, Lcom/ubermedia/net/a/a/a;

    const-string v1, "RAW Files not support for video"

    invoke-direct {v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/os/Handler;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->o:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->n()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/twidroid/net/a/b/b;->r:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->q:Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p0, v0}, Lcom/twidroid/net/a/b/b;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twidroid/net/a/b/b;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->p:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/twidroid/net/a/b/b;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twidroid/net/a/b/b;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;ZDDLjava/lang/String;J)Ljava/lang/String;
    .registers 18

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v1, "rsp"

    invoke-interface {v2, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "stat"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_4e

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "stat"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7a

    :cond_4e
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "status"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_c4

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "status"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c4

    :cond_7a
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_86
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_ab

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mediaurl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a8

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :cond_a8
    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    :cond_ab
    const-string v1, "PhotoProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::parseResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_c4
    const-string v0, "err"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/ubermedia/net/a/a/a;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v3, "msg"

    invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_fa} :catch_fa

    :catch_fa
    move-exception v0

    new-instance v1, Lcom/ubermedia/net/a/a/a;

    invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Lorg/apache/http/HttpEntity;
    .registers 14

    const/4 v4, 0x0

    new-instance v0, Lcom/twidroid/net/a/b/i;

    invoke-direct {v0}, Lcom/twidroid/net/a/b/i;-><init>()V

    iput-object p1, v0, Lcom/twidroid/net/a/b/i;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/twidroid/net/a/b/i;->b:Ljava/util/Map;

    iput-object p3, v0, Lcom/twidroid/net/a/b/i;->d:Ljava/lang/String;

    iput-object p4, v0, Lcom/twidroid/net/a/b/i;->e:Ljava/io/InputStream;

    iput-object p5, v0, Lcom/twidroid/net/a/b/i;->f:Ljava/lang/String;

    iput-object p6, v0, Lcom/twidroid/net/a/b/i;->g:Ljava/lang/String;

    iput-object p7, v0, Lcom/twidroid/net/a/b/i;->c:[Lorg/apache/http/Header;

    iput-object p8, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;

    new-instance v1, Lcom/twidroid/net/a/b/g;

    invoke-direct {v1, p0, v4}, Lcom/twidroid/net/a/b/g;-><init>(Lcom/twidroid/net/a/b/b;Lcom/twidroid/net/a/b/b$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/twidroid/net/a/b/i;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twidroid/net/a/b/g;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-object v4
.end method

.method protected a(Landroid/app/Activity;Ljava/util/Map;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_74

    const-string v1, "PhotoProvider"

    const-string v2, "Image found in Media Library - using media library data "

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "latitude"

    const-string v2, "latitude"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "longitude"

    const-string v2, "longitude"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tags"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geo:lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "latitude"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " geo:lon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "longitude"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_73
    return-void

    :cond_74
    const-string v0, "PhotoProvider"

    const-string v1, "Image NOT found in Media Library - using current location "

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7b
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    const-string v1, "latitude"

    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "longitude"

    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tags"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geo:lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " geo:lon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_f1} :catch_f2

    goto :goto_73

    :catch_f2
    move-exception v0

    goto :goto_73
.end method

.method public a(Ljava/lang/String;Landroid/os/Handler;Lcom/twidroid/net/a/b/e;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/net/a/b/b;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/twidroid/net/a/b/b;->a(Ljava/lang/String;Landroid/os/Handler;Lcom/twidroid/net/a/b/e;Landroid/graphics/Bitmap;)Ljava/io/OutputStream;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/net/a/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/twidroid/net/a/b/b;->f:Z

    new-instance v0, Lcom/twidroid/net/a/b/b$1;

    invoke-direct {v0, p0}, Lcom/twidroid/net/a/b/b$1;-><init>(Lcom/twidroid/net/a/b/b;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ubermedia/a/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method
