.class public Lcom/instagram/cliffjumper/edit/photo/jpeg/a;
.super Ljava/lang/Object;
.source "JpegHelper.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v1, 0x400

    const/4 v0, -0x1

    const-class v2, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;

    sput-object v2, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a:Ljava/lang/Class;

    sput v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->c:I

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    :cond_10
    sput v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->b:I

    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/f;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0x140

    if-gt v0, v2, :cond_28

    sput v1, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->c:I

    :cond_28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .registers 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    sget v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    sget v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->c:I

    :goto_9
    return v0

    :cond_a
    new-array v0, v2, [I

    const/16 v1, 0xd33

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a:Ljava/lang/Class;

    const-string v1, "Max Texture Size = %d"

    new-array v2, v2, [Ljava/lang/Object;

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    aget v0, v0, v4

    sput v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->c:I

    goto :goto_9
.end method

.method private static a(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
    .registers 3

    sget v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    sget v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->b:I

    :goto_7
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_19

    invoke-static {p0, v0, v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->scaleImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;II)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I

    move-object p0, v0

    :cond_19
    return-object p0

    :cond_1a
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v0

    const/16 v1, 0x200

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
    .registers 11

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    :try_start_1e
    invoke-static {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a(Ljava/lang/String;Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_4f

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a:Ljava/lang/Class;

    const-string v3, "Input image at %s is not square (%d x %d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
    :try_end_52
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1e .. :try_end_52} :catch_54

    move-result-object v0

    goto :goto_17

    :catch_54
    move-exception v1

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/jpeg/a;->a:Ljava/lang/Class;

    const-string v3, "UnsatisfiedLinkError: %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_17
.end method
