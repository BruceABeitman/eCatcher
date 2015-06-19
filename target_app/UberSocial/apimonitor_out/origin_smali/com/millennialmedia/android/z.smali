.class Lcom/millennialmedia/android/z;
.super Lcom/millennialmedia/android/cf;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "path"

.field private static final n:Ljava/lang/String; = "BridgeMMMedia"

.field private static o:Ljava/lang/Object;


# instance fields
.field a:Landroid/media/MediaScannerConnection;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/millennialmedia/android/cf;-><init>()V

    const-string v0, "isSourceTypeAvailable"

    iput-object v0, p0, Lcom/millennialmedia/android/z;->e:Ljava/lang/String;

    const-string v0, "availableSourceTypes"

    iput-object v0, p0, Lcom/millennialmedia/android/z;->f:Ljava/lang/String;

    const-string v0, "getPicture"

    iput-object v0, p0, Lcom/millennialmedia/android/z;->g:Ljava/lang/String;

    const-string v0, "writeToPhotoLibrary"

    iput-object v0, p0, Lcom/millennialmedia/android/z;->h:Ljava/lang/String;

    const-string v0, "playVideo"

    iput-object v0, p0, Lcom/millennialmedia/android/z;->i:Ljava/lang/String;

    const-string v0, "stopAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/z;->j:Ljava/lang/String;

    const-string v0, "getDeviceVolume"

    iput-object v0, p0, Lcom/millennialmedia/android/z;->k:Ljava/lang/String;

    const-string v0, "playAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/z;->l:Ljava/lang/String;

    const-string v0, "playSound"

    iput-object v0, p0, Lcom/millennialmedia/android/z;->m:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/millennialmedia/android/z;->a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v3, 0x0

    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const-string v2, "Center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {p0, p2, p3}, Lcom/millennialmedia/android/z;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    const-string v2, "ScaleToAspectFit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p0, v1, v0, p4}, Lcom/millennialmedia/android/z;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1b

    :cond_3b
    const-string v2, "ScaleToAspectFill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p0, v1, v0, p4}, Lcom/millennialmedia/android/z;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v3, v3, p2, p3}, Lcom/millennialmedia/android/z;->a(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1b

    :cond_5e
    invoke-static {p0, p2, p3, p4}, Lcom/millennialmedia/android/z;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1b
.end method

.method static synthetic a()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/millennialmedia/android/z;->o:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_23

    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/millennialmedia/android/z$1;

    invoke-direct {v2, p0, p1}, Lcom/millennialmedia/android/z$1;-><init>(Lcom/millennialmedia/android/z;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/millennialmedia/android/z;->a:Landroid/media/MediaScannerConnection;

    iget-object v0, p0, Lcom/millennialmedia/android/z;->a:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/millennialmedia/android/z;->a:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    :cond_23
    return-void
.end method

.method private static final a(Ljava/io/File;IILjava/lang/String;)[B
    .registers 11

    const/4 v5, 0x1

    const/4 v0, 0x0

    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_7e

    :try_start_7
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    invoke-static {v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v1, p2, :cond_1b

    if-le v2, p1, :cond_116

    :cond_1b
    if-le v2, v1, :cond_6c

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_24
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_29} :catch_10f

    const/4 v6, 0x0

    :try_start_2a
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    invoke-static {v2, v1, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_10d
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_32} :catch_113

    move-result-object v4

    if-eqz v3, :cond_38

    :try_start_35
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_38
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3d} :catch_74

    :cond_3d
    move-object v3, v4

    :goto_3e
    if-eqz v3, :cond_6b

    invoke-static {v3, p3, p1, p2, v5}, Lcom/millennialmedia/android/z;->a(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v4

    :try_start_44
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_e8
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_106

    :try_start_49
    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v1, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_58
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5b
    .catchall {:try_start_49 .. :try_end_5b} :catchall_104
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5b} :catch_be

    move-result-object v0

    if-eqz v3, :cond_61

    :try_start_5e
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_61
    if-eqz v4, :cond_66

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_66
    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6b} :catch_df

    :cond_6b
    :goto_6b
    return-object v0

    :cond_6c
    int-to-float v1, v2

    int-to-float v2, p1

    div-float/2addr v1, v2

    :try_start_6f
    invoke-static {v1}, Ljava/lang/Math;->round(F)I
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_109
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_72} :catch_10f

    move-result v1

    goto :goto_24

    :catch_74
    move-exception v1

    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    goto :goto_3e

    :catch_7e
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_81
    :try_start_81
    const-string v4, "BridgeMMMedia"

    const-string v6, "Can\'t find file to scale bitmap"

    invoke-static {v4, v6, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_10d

    if-eqz v3, :cond_8d

    :try_start_8a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_8d
    if-eqz v2, :cond_92

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_92} :catch_94

    :cond_92
    move-object v3, v0

    goto :goto_3e

    :catch_94
    move-exception v1

    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v0

    goto :goto_3e

    :catchall_9e
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_a2
    if-eqz v3, :cond_a7

    :try_start_a4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_a7
    if-eqz v2, :cond_ac

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ac} :catch_ad

    :cond_ac
    :goto_ac
    throw v0

    :catch_ad
    move-exception v1

    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ac

    :cond_b6
    :try_start_b6
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v4, v1, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_104
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bd} :catch_be

    goto :goto_58

    :catch_be
    move-exception v1

    :goto_bf
    :try_start_bf
    const-string v5, "BridgeMMMedia"

    const-string v6, "Error scaling bitmap"

    invoke-static {v5, v6, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c6
    .catchall {:try_start_bf .. :try_end_c6} :catchall_104

    if-eqz v3, :cond_cb

    :try_start_c8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_cb
    if-eqz v4, :cond_d0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d0
    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d5} :catch_d6

    goto :goto_6b

    :catch_d6
    move-exception v1

    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b

    :catch_df
    move-exception v1

    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b

    :catchall_e8
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_eb
    if-eqz v3, :cond_f0

    :try_start_ed
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f0
    if-eqz v4, :cond_f5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f5
    if-eqz v2, :cond_fa

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_fa} :catch_fb

    :cond_fa
    :goto_fa
    throw v0

    :catch_fb
    move-exception v1

    const-string v2, "BridgeMMMedia"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_fa

    :catchall_104
    move-exception v0

    goto :goto_eb

    :catch_106
    move-exception v1

    move-object v2, v0

    goto :goto_bf

    :catchall_109
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_a2

    :catchall_10d
    move-exception v0

    goto :goto_a2

    :catch_10f
    move-exception v1

    move-object v2, v0

    goto/16 :goto_81

    :catch_113
    move-exception v1

    goto/16 :goto_81

    :cond_116
    move v1, v5

    goto/16 :goto_24
.end method

.method private b()Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_36

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    move v0, v1

    goto :goto_33

    :cond_36
    move v0, v1

    goto :goto_33
.end method

.method private c()Z
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2e

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    move v0, v1

    goto :goto_2b

    :cond_2e
    move v0, v1

    goto :goto_2b
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/millennialmedia/android/z;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/z;->a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/millennialmedia/android/z;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/z;->b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_1b
    iget-object v1, p0, Lcom/millennialmedia/android/z;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/z;->c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_28
    iget-object v1, p0, Lcom/millennialmedia/android/z;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/z;->d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_35
    iget-object v1, p0, Lcom/millennialmedia/android/z;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/z;->e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_42
    iget-object v1, p0, Lcom/millennialmedia/android/z;->j:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/z;->h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_4f
    iget-object v1, p0, Lcom/millennialmedia/android/z;->k:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/z;->i(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_5c
    iget-object v1, p0, Lcom/millennialmedia/android/z;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/z;->f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d

    :cond_69
    iget-object v1, p0, Lcom/millennialmedia/android/z;->m:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/z;->g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_d
.end method

.method public a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 4

    const-string v0, "sourceType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_34

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {p0}, Lcom/millennialmedia/android/z;->b()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v0, "true"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    const-string v1, "Photo Library"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/millennialmedia/android/z;->c()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "true"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_1e

    :cond_34
    const-string v0, "false"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_1e
.end method

.method public b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 5

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0}, Lcom/millennialmedia/android/z;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_10
    invoke-direct {p0}, Lcom/millennialmedia/android/z;->c()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "Photo Library"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1b
    new-instance v1, Lcom/millennialmedia/android/cg;

    invoke-direct {v1}, Lcom/millennialmedia/android/cg;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/cg;->c:I

    iput-object v0, v1, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;

    return-object v1
.end method

.method public declared-synchronized c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 13

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "sourceType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "constrainHeight"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "constrainWidth"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "contentMode"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2e

    const-string v4, ""

    :cond_2e
    if-eqz v2, :cond_32

    if-nez v3, :cond_3a

    :cond_32
    const-string v0, "Missing constrainHeight and/or constrainWidth"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_e1

    move-result-object v0

    :goto_38
    monitor-exit p0

    return-object v0

    :cond_3a
    :try_start_3a
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    mul-int v6, v2, v3

    const v7, 0x57e40

    if-le v6, v7, :cond_52

    const-string v0, "constrainHeight * constrainWidth > 360000"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_38

    :cond_52
    if-eqz v0, :cond_f8

    if-eqz v1, :cond_f8

    new-instance v6, Ljava/io/File;

    invoke-static {v0}, Lcom/millennialmedia/android/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tmp_mm_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, "Camera"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-direct {p0}, Lcom/millennialmedia/android/z;->b()Z

    move-result v7

    if-nez v7, :cond_a4

    :cond_8e
    const-string v7, "Photo Library"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9e

    const-string v7, "PhotoLibrary"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f8

    :cond_9e
    invoke-direct {p0}, Lcom/millennialmedia/android/z;->c()Z
    :try_end_a1
    .catchall {:try_start_3a .. :try_end_a1} :catchall_e1

    move-result v7

    if-eqz v7, :cond_f8

    :cond_a4
    :try_start_a4
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    sput-object v7, Lcom/millennialmedia/android/z;->o:Ljava/lang/Object;

    sget-object v7, Lcom/millennialmedia/android/z;->o:Ljava/lang/Object;

    monitor-enter v7
    :try_end_ae
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_f3
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ae} :catch_e7

    :try_start_ae
    invoke-static {v0, v6, v1}, Lcom/millennialmedia/android/dj;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Lcom/millennialmedia/android/z;->o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v7
    :try_end_b7
    .catchall {:try_start_ae .. :try_end_b7} :catchall_e4

    const/4 v0, 0x0

    :try_start_b8
    sput-object v0, Lcom/millennialmedia/android/z;->o:Ljava/lang/Object;

    :goto_ba
    if-eqz v6, :cond_f8

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_f8

    invoke-static {v6, v3, v2, v4}, Lcom/millennialmedia/android/z;->a(Ljava/io/File;IILjava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    if-eqz v1, :cond_f8

    new-instance v0, Lcom/millennialmedia/android/cg;

    invoke-direct {v0}, Lcom/millennialmedia/android/cg;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Lcom/millennialmedia/android/cg;->c:I

    iput-object v1, v0, Lcom/millennialmedia/android/cg;->e:[B
    :try_end_df
    .catchall {:try_start_b8 .. :try_end_df} :catchall_e1

    goto/16 :goto_38

    :catchall_e1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_e4
    move-exception v0

    :try_start_e5
    monitor-exit v7
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    :try_start_e6
    throw v0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_f3
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e7} :catch_e7

    :catch_e7
    move-exception v0

    :try_start_e8
    const-string v1, "BridgeMMMedia"

    const-string v7, "Error with pickerActivity synchronization"

    invoke-static {v1, v7, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ef
    .catchall {:try_start_e8 .. :try_end_ef} :catchall_f3

    const/4 v0, 0x0

    :try_start_f0
    sput-object v0, Lcom/millennialmedia/android/z;->o:Ljava/lang/Object;

    goto :goto_ba

    :catchall_f3
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/millennialmedia/android/z;->o:Ljava/lang/Object;

    throw v0
    :try_end_f8
    .catchall {:try_start_f0 .. :try_end_f8} :catchall_e1

    :cond_f8
    move-object v0, v5

    goto/16 :goto_38
.end method

.method public declared-synchronized d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_94

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4d

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Pictures"

    invoke-static {v3, v4, v2, v0}, Lcom/millennialmedia/android/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v0, "Failed to download"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_96

    move-result-object v0

    :goto_4b
    monitor-exit p0

    return-object v0

    :cond_4d
    :try_start_4d
    const-string v2, "Pictures"

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/millennialmedia/android/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_79

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No file at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_4b

    :cond_79
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/z;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/millennialmedia/android/a;->a()Z

    move-result v0

    if-nez v0, :cond_8d

    const-string v0, "Storage not mounted, cannot add image to photo library photo library"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_4b

    :cond_8d
    const-string v0, "Image saved to photo library"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
    :try_end_92
    .catchall {:try_start_4d .. :try_end_92} :catchall_96

    move-result-object v0

    goto :goto_4b

    :cond_94
    const/4 v0, 0x0

    goto :goto_4b

    :catchall_96
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_3a

    if-eqz v1, :cond_3a

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {v0, v1}, Lcom/millennialmedia/android/dj;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    invoke-static {v0, v1}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-static {v0, v1}, Lcom/millennialmedia/android/dj;->a(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_23

    :cond_3a
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_66

    if-eqz v1, :cond_66

    invoke-static {v0}, Lcom/millennialmedia/android/aa;->a(Landroid/content/Context;)Lcom/millennialmedia/android/aa;

    move-result-object v3

    if-nez v3, :cond_1d

    move-object v0, v2

    :goto_1c
    return-object v0

    :cond_1d
    invoke-virtual {v3}, Lcom/millennialmedia/android/aa;->a()Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v0, "Audio already playing."

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_1c

    :cond_2a
    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "repeat"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/millennialmedia/android/aa;->a(Landroid/net/Uri;Z)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_1c

    :cond_47
    invoke-static {v0, v1}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "repeat"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/millennialmedia/android/aa;->a(Landroid/net/Uri;Z)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_1c

    :cond_66
    move-object v0, v2

    goto :goto_1c
.end method

.method public g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_7

    move-object v0, v2

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "path"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_38

    if-eqz v1, :cond_38

    invoke-static {v0, v1}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/aa;->a(Landroid/content/Context;)Lcom/millennialmedia/android/aa;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/aa;->a(Ljava/io/File;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_6

    :cond_38
    move-object v0, v2

    goto :goto_6
.end method

.method public h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/aa;->a(Landroid/content/Context;)Lcom/millennialmedia/android/aa;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/millennialmedia/android/aa;->b()Lcom/millennialmedia/android/cg;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public i(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/millennialmedia/android/co;->u(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;

    :goto_18
    return-object v0

    :cond_19
    const-string v0, "no volume available"

    invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;

    move-result-object v0

    goto :goto_18
.end method
