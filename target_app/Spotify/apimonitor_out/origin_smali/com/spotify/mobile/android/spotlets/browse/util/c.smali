.class public final Lcom/spotify/mobile/android/spotlets/browse/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/b/a/a;

.field private b:Landroid/graphics/Bitmap$CompressFormat;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .registers 8

    const/16 v1, 0x46

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/util/c;->b:Landroid/graphics/Bitmap$CompressFormat;

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/browse/util/c;->c:I

    :try_start_b
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/b/a/a;->a(Ljava/io/File;)Lcom/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/util/c;->a:Lcom/b/a/a;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/util/c;->b:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x46

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/browse/util/c;->c:I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_3b} :catch_3c

    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    const-string v1, "Exception occurred on creating disk cache with name: %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3b
.end method

.method private a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/util/c;->a:Lcom/b/a/a;

    invoke-virtual {v2, p1}, Lcom/b/a/a;->a(Ljava/lang/String;)Lcom/b/a/e;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_80
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8b

    move-result-object v2

    if-nez v2, :cond_10

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/b/a/e;->close()V

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    :try_start_10
    invoke-virtual {v2}, Lcom/b/a/e;->a()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x2000

    new-array v4, v4, [B

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x800

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_22
    const/4 v6, 0x0

    const/16 v7, 0x2000

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_47

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_89
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_30} :catch_31

    goto :goto_22

    :catch_31
    move-exception v1

    :goto_32
    :try_start_32
    const-string v3, "IOException occurred when fetching bitmap: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_89

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/b/a/e;->close()V

    goto :goto_f

    :cond_47
    :try_start_47
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    if-eqz v3, :cond_7a

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v3, v5, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_5a
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    if-lt v5, p2, :cond_64

    mul-int/lit8 v1, v1, 0x2

    goto :goto_5a

    :cond_64
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    array-length v5, v3

    invoke-static {v3, v1, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_79
    .catchall {:try_start_47 .. :try_end_79} :catchall_89
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_79} :catch_31

    move-result-object v0

    :cond_7a
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/b/a/e;->close()V

    goto :goto_f

    :catchall_80
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_83
    if-eqz v2, :cond_88

    invoke-virtual {v2}, Lcom/b/a/e;->close()V

    :cond_88
    throw v0

    :catchall_89
    move-exception v0

    goto :goto_83

    :catch_8b
    move-exception v1

    move-object v2, v0

    goto :goto_32
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/spotify/mobile/android/spotlets/browse/util/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/browse/util/c;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/util/c;->a:Lcom/b/a/a;

    invoke-virtual {v1, p1}, Lcom/b/a/a;->b(Ljava/lang/String;)Lcom/b/a/b;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-direct {p0, p2, v0}, Lcom/spotify/mobile/android/spotlets/browse/util/c;->a(Landroid/graphics/Bitmap;Lcom/b/a/b;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/util/c;->a:Lcom/b/a/a;

    invoke-virtual {v1}, Lcom/b/a/a;->a()V

    invoke-virtual {v0}, Lcom/b/a/b;->b()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_19

    goto :goto_9

    :catch_19
    move-exception v1

    if-eqz v0, :cond_9

    :try_start_1c
    invoke-virtual {v0}, Lcom/b/a/b;->c()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_9

    :catch_20
    move-exception v0

    goto :goto_9

    :cond_22
    :try_start_22
    invoke-virtual {v0}, Lcom/b/a/b;->c()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_19

    goto :goto_9
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/b/a/b;)Z
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Lcom/b/a/b;->a()Ljava/io/OutputStream;

    move-result-object v0

    const/16 v3, 0x2000

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_18

    :try_start_c
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/util/c;->b:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/browse/util/c;->c:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_20

    move-result v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return v0

    :catchall_18
    move-exception v0

    move-object v1, v2

    :goto_1a
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1f
    throw v0

    :catchall_20
    move-exception v0

    goto :goto_1a
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_3
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    :goto_17
    array-length v5, v3

    if-ge v1, v5, :cond_30

    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_30
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_33} :catch_35

    move-result-object v0

    :goto_34
    return-object v0

    :catch_35
    move-exception v1

    const-string v3, "Exception occurred when md5 hashing: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .registers 6

    invoke-static {p2}, Lcom/spotify/mobile/android/spotlets/browse/util/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/spotify/mobile/android/spotlets/browse/util/c;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/util/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/browse/util/d;-><init>(Lcom/spotify/mobile/android/spotlets/browse/util/c;Landroid/widget/ImageView;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_15
    return-void

    :cond_16
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_15
.end method
