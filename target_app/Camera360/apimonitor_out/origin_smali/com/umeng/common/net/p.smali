.class public Lcom/umeng/common/net/p;
.super Ljava/lang/Object;
.source "ResUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/common/net/p$a;,
        Lcom/umeng/common/net/p$b;,
        Lcom/umeng/common/net/p$c;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static final b:Ljava/lang/String; = null

.field private static final c:J = 0x6400000L

.field private static final d:J = 0xa00000L

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/common/net/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/p;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/common/net/p;->a:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/p;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v5, -0xbdbdbe

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_5e} :catch_5f

    :goto_5e
    return-object v0

    :catch_5f
    move-exception v0

    sget-object v0, Lcom/umeng/common/net/p;->b:Ljava/lang/String;

    const-string/jumbo v1, "Cant`t create round corner bitmap. [OutOfMemoryError] "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_5e
.end method

.method static synthetic a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {p0}, Lcom/umeng/common/net/p;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/umeng/common/net/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/umeng/common/net/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/umeng/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0x6400000

    :goto_32
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "/download/.um"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/net/p;->c(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_60

    invoke-static {v5}, Lcom/umeng/common/net/p;->a(Ljava/io/File;)V

    :cond_60
    :goto_60
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_65} :catch_109

    :try_start_65
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    const/16 v4, 0x1000

    new-array v4, v4, [B

    :goto_80
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_144

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".tmp"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    sget-object v3, Lcom/umeng/common/net/p;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "download img["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]  to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_d1} :catch_14a

    move-result-object v0

    goto/16 :goto_8

    :cond_d4
    :try_start_d4
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0xa00000

    goto/16 :goto_32

    :cond_e1
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_60

    sget-object v0, Lcom/umeng/common/net/p;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to create directory"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Check permission. Make sure WRITE_EXTERNAL_STORAGE is added in your Manifest.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_107} :catch_109

    goto/16 :goto_60

    :catch_109
    move-exception v0

    move-object v2, v1

    :goto_10b
    sget-object v3, Lcom/umeng/common/net/p;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\t url:\t"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/umeng/common/util/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_141

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    :cond_141
    move-object v0, v1

    goto/16 :goto_8

    :cond_144
    const/4 v6, 0x0

    :try_start_145
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_148} :catch_14a

    goto/16 :goto_80

    :catch_14a
    move-exception v0

    goto :goto_10b
.end method

.method static synthetic a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;ZLjava/lang/String;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/umeng/common/net/p;->b(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 11

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/umeng/common/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/p$a;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/umeng/common/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;)V
    .registers 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/umeng/common/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;Z)V
    .registers 17

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/umeng/common/net/p;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_8
    invoke-static {p0, p2}, Lcom/umeng/common/net/p;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_49

    sget-boolean v1, Lcom/umeng/common/net/p;->a:Z

    if-nez v1, :cond_49

    if-eqz p4, :cond_1f

    sget-object v1, Lcom/umeng/common/net/p$b;->a:Lcom/umeng/common/net/p$b;

    invoke-interface {p4, v1}, Lcom/umeng/common/net/p$a;->a(Lcom/umeng/common/net/p$b;)V

    :cond_1f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/common/net/p;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2c
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/umeng/common/net/p;->b(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;ZLjava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_37} :catch_38

    goto :goto_2

    :catch_38
    move-exception v0

    sget-object v1, Lcom/umeng/common/net/p;->b:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p4, :cond_2

    sget-object v0, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;

    invoke-interface {p4, v0}, Lcom/umeng/common/net/p$a;->a(Lcom/umeng/common/net/o$a;)V

    goto :goto_2

    :cond_49
    :try_start_49
    new-instance v0, Lcom/umeng/common/net/p$c;

    sget-object v4, Lcom/umeng/common/net/p$b;->b:Lcom/umeng/common/net/p$b;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/umeng/common/net/p$c;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcom/umeng/common/net/p$b;Ljava/io/File;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/p$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5f} :catch_38

    goto :goto_2
.end method

.method protected static a(Ljava/io/File;)V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/umeng/common/net/p;->f:Ljava/lang/Thread;

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/common/net/q;

    invoke-direct {v1, p0}, Lcom/umeng/common/net/q;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/umeng/common/net/p;->f:Ljava/lang/Thread;

    sget-object v0, Lcom/umeng/common/net/p;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    sget-object v1, Lcom/umeng/common/net/p;->b:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method static synthetic a(Ljava/lang/Thread;)V
    .registers 1

    sput-object p0, Lcom/umeng/common/net/p;->f:Ljava/lang/Thread;

    return-void
.end method

.method private static a(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/umeng/common/net/p;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/umeng/common/net/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/umeng/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    :goto_12
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "/download/.um"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_40

    :goto_36
    return-object v0

    :cond_37
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_40
    const/4 v0, 0x0

    goto :goto_36
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, ""

    if-ltz v1, :cond_10

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/umeng/common/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;ZLjava/lang/String;)V
    .registers 12

    const-class v1, Lcom/umeng/common/net/p;

    monitor-enter v1

    if-eqz p6, :cond_16

    if-eqz p2, :cond_16

    :try_start_7
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/net/p;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_16
    if-eqz p2, :cond_1a

    if-nez p1, :cond_4a

    :cond_1a
    if-eqz p4, :cond_21

    sget-object v0, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;

    invoke-interface {p4, v0}, Lcom/umeng/common/net/p$a;->a(Lcom/umeng/common/net/o$a;)V

    :cond_21
    sget-object v0, Lcom/umeng/common/net/p;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bind drawable failed. drawable ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  imageView[+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "+]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_69
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_48} :catch_58

    :cond_48
    :goto_48
    monitor-exit v1

    return-void

    :cond_4a
    :try_start_4a
    invoke-static {p1, p7}, Lcom/umeng/common/net/p;->a(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    if-eqz p4, :cond_48

    sget-object v0, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;

    invoke-interface {p4, v0}, Lcom/umeng/common/net/p$a;->a(Lcom/umeng/common/net/o$a;)V
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_69
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_57} :catch_58

    goto :goto_48

    :catch_58
    move-exception v0

    :try_start_59
    sget-object v2, Lcom/umeng/common/net/p;->b:Ljava/lang/String;

    const-string/jumbo v3, "bind failed"

    invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p4, :cond_48

    sget-object v0, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;

    invoke-interface {p4, v0}, Lcom/umeng/common/net/p$a;->a(Lcom/umeng/common/net/o$a;)V
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_69

    goto :goto_48

    :catchall_69
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6c
    if-eqz p3, :cond_7e

    :try_start_6e
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_71
    if-eqz p5, :cond_76

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_76
    if-eqz p4, :cond_48

    sget-object v0, Lcom/umeng/common/net/o$a;->a:Lcom/umeng/common/net/o$a;

    invoke-interface {p4, v0}, Lcom/umeng/common/net/p$a;->a(Lcom/umeng/common/net/o$a;)V

    goto :goto_48

    :cond_7e
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_81
    .catchall {:try_start_6e .. :try_end_81} :catchall_69
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_81} :catch_58

    goto :goto_71
.end method

.method static synthetic b(Ljava/io/File;)Z
    .registers 2

    invoke-static {p0}, Lcom/umeng/common/net/p;->d(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/io/File;)J
    .registers 11

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move-wide v1, v0

    :cond_11
    return-wide v1

    :cond_12
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v5}, Ljava/util/Stack;->clear()V

    invoke-virtual {v5, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v1, v0

    :goto_1e
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    const/4 v0, 0x0

    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    :goto_33
    array-length v3, v6

    if-lt v2, v3, :cond_38

    move-wide v1, v0

    goto :goto_1e

    :cond_38
    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4b

    aget-object v3, v6, v2

    invoke-virtual {v5, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v3, v0

    :goto_46
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_33

    :cond_4b
    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v3, v0

    goto :goto_46
.end method

.method private static c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    sget-object v2, Lcom/umeng/common/net/p;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Resutil fetchImage OutOfMemoryError:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private static d(Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move v1, v0

    :goto_1b
    array-length v3, v2

    if-lt v1, v3, :cond_20

    const/4 v0, 0x1

    goto :goto_15

    :cond_20
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_30

    aget-object v3, v2, v1

    invoke-static {v3}, Lcom/umeng/common/net/p;->d(Ljava/io/File;)Z

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_30
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1b7740

    cmp-long v3, v3, v5

    if-lez v3, :cond_2d

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4c} :catch_4d

    goto :goto_2d

    :catch_4d
    move-exception v1

    goto :goto_15
.end method
