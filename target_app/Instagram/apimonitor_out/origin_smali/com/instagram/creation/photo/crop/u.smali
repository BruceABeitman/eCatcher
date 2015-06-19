.class Lcom/instagram/creation/photo/crop/u;
.super Lcom/instagram/common/m/a;
.source "LoadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/m/a",
        "<",
        "Lcom/instagram/creation/photo/crop/v;",
        ">;"
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final o:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/creation/photo/crop/u;

    sput-object v0, Lcom/instagram/creation/photo/crop/u;->n:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/common/m/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/instagram/creation/photo/crop/u;->o:Landroid/net/Uri;

    return-void
.end method

.method private static a(Landroid/media/ExifInterface;)I
    .registers 3

    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_16

    :pswitch_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :pswitch_c
    const/16 v0, 0x5a

    goto :goto_b

    :pswitch_f
    const/16 v0, 0xb4

    goto :goto_b

    :pswitch_12
    const/16 v0, 0x10e

    goto :goto_b

    nop

    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_f
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_12
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Double;
    .registers 11

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, ","

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v7

    const-string v2, "/"

    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v7

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double v1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aget-object v2, v0, v8

    const-string v3, "/"

    invoke-virtual {v2, v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    div-double v2, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aget-object v0, v0, v9

    const-string v3, "/"

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v7

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v5, 0x404e

    div-double/2addr v1, v5

    add-double/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x40ac200000000000L

    div-double/2addr v3, v5

    add-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/instagram/creation/photo/b/b;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/u;->a(Landroid/media/ExifInterface;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/instagram/creation/photo/b/b;->a(I)V

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/u;->b(Landroid/media/ExifInterface;)[Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/instagram/creation/photo/b/b;->a(Ljava/lang/Double;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/instagram/creation/photo/b/b;->b(Ljava/lang/Double;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    sget-object v1, Lcom/instagram/creation/photo/crop/u;->n:Ljava/lang/Class;

    const-string v2, "Exception caught reading exif data"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method private static b(Landroid/media/ExifInterface;)[Ljava/lang/Double;
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const-string v1, "GPSLatitude"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPSLatitudeRef"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLongitude"

    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPSLongitudeRef"

    invoke-virtual {p0, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_44

    if-eqz v2, :cond_44

    if-eqz v3, :cond_44

    if-eqz v4, :cond_44

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Double;

    const-string v5, "N"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/u;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v8

    :goto_36
    const-string v1, "E"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-static {v3}, Lcom/instagram/creation/photo/crop/u;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v9

    :cond_44
    :goto_44
    return-object v0

    :cond_45
    invoke-static {v1}, Lcom/instagram/creation/photo/crop/u;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sub-double v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v8

    goto :goto_36

    :cond_56
    invoke-static {v3}, Lcom/instagram/creation/photo/crop/u;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sub-double v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v9

    goto :goto_44
.end method

.method private u()Lcom/instagram/creation/photo/crop/v;
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/u;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_9
    iget-object v2, p0, Lcom/instagram/creation/photo/crop/u;->o:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_67
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_e} :catch_7a

    move-result-object v3

    :try_start_f
    invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/u;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/u/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/instagram/common/u/a;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_29

    new-instance v0, Lcom/instagram/creation/photo/crop/v;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, p0, v2, v4, v5}, Lcom/instagram/creation/photo/crop/v;-><init>(Lcom/instagram/creation/photo/crop/u;Lcom/instagram/creation/photo/gallery/c;Landroid/graphics/Bitmap;Lcom/instagram/creation/photo/b/b;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_25} :catch_a8
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_25} :catch_a3

    invoke-static {v3}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    :cond_28
    :goto_28
    return-object v0

    :cond_29
    :try_start_29
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/d;
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_30} :catch_a8
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_30} :catch_a3

    move-result-object v2

    :try_start_31
    invoke-interface {v2, v4}, Lcom/instagram/creation/photo/gallery/d;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v6, 0x3fb47ae147ae147bL

    mul-double/2addr v0, v6

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x4

    invoke-interface {v5, v0}, Lcom/instagram/creation/photo/gallery/c;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4d
    new-instance v6, Lcom/instagram/creation/photo/b/b;

    invoke-direct {v6}, Lcom/instagram/creation/photo/b/b;-><init>()V

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/instagram/creation/photo/crop/u;->a(Lcom/instagram/creation/photo/b/b;Ljava/lang/String;)V

    new-instance v0, Lcom/instagram/creation/photo/crop/v;

    invoke-direct {v0, p0, v5, v1, v6}, Lcom/instagram/creation/photo/crop/v;-><init>(Lcom/instagram/creation/photo/crop/u;Lcom/instagram/creation/photo/gallery/c;Landroid/graphics/Bitmap;Lcom/instagram/creation/photo/b/b;)V
    :try_end_5e
    .catchall {:try_start_31 .. :try_end_5e} :catchall_9d
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_5e} :catch_ab
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_5e} :catch_a6

    invoke-static {v3}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_28

    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/d;->a()V

    goto :goto_28

    :catch_67
    move-exception v0

    move-object v2, v1

    :goto_69
    :try_start_69
    new-instance v0, Lcom/instagram/creation/photo/crop/v;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/instagram/creation/photo/crop/v;-><init>(Lcom/instagram/creation/photo/crop/u;Lcom/instagram/creation/photo/gallery/c;Landroid/graphics/Bitmap;Lcom/instagram/creation/photo/b/b;)V
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_9f

    invoke-static {v2}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_28

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/d;->a()V

    goto :goto_28

    :catch_7a
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_7d
    :try_start_7d
    new-instance v0, Lcom/instagram/creation/photo/crop/v;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/instagram/creation/photo/crop/v;-><init>(Lcom/instagram/creation/photo/crop/u;Lcom/instagram/creation/photo/gallery/c;Landroid/graphics/Bitmap;Lcom/instagram/creation/photo/b/b;)V
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_9d

    invoke-static {v3}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_28

    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/d;->a()V

    goto :goto_28

    :catchall_8e
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_91
    invoke-static {v3}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_99

    invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/d;->a()V

    :cond_99
    throw v0

    :catchall_9a
    move-exception v0

    move-object v2, v1

    goto :goto_91

    :catchall_9d
    move-exception v0

    goto :goto_91

    :catchall_9f
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_91

    :catch_a3
    move-exception v0

    move-object v2, v1

    goto :goto_7d

    :catch_a6
    move-exception v0

    goto :goto_7d

    :catch_a8
    move-exception v0

    move-object v2, v3

    goto :goto_69

    :catch_ab
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_69
.end method


# virtual methods
.method public final synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/creation/photo/crop/u;->u()Lcom/instagram/creation/photo/crop/v;

    move-result-object v0

    return-object v0
.end method
