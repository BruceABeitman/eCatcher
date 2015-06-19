.class public Lcom/pinguo/lib/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static NETWORK_TYPE:Ljava/lang/String; = null

.field public static final ORIENTATION_HYSTERESIS:I = 0x14

.field public static PACKAGE_NAME:Ljava/lang/String;

.field public static PHONE_IMEI:Ljava/lang/String;

.field public static PHONE_LOCALE:Ljava/lang/String;

.field public static SCREEN_HEIGHT:I

.field public static SCREEN_WIDTH:I

.field private static final TAG:Ljava/lang/String;

.field public static VERSION_CODE:Ljava/lang/String;

.field public static VERSION_NAME:Ljava/lang/String;

.field private static lastClickTime:J

.field private static sPixelDensity:F

.field private static versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/lib/util/Util;->PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/lib/util/Util;->VERSION_CODE:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/lib/util/Util;->VERSION_NAME:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/lib/util/Util;->PHONE_IMEI:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/lib/util/Util;->PHONE_LOCALE:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/lib/util/Util;->NETWORK_TYPE:Ljava/lang/String;

    const-class v0, Lcom/pinguo/lib/util/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/lib/util/Util;->TAG:Ljava/lang/String;

    const/16 v0, 0x1e0

    sput v0, Lcom/pinguo/lib/util/Util;->SCREEN_HEIGHT:I

    const/16 v0, 0x320

    sput v0, Lcom/pinguo/lib/util/Util;->SCREEN_WIDTH:I

    const/high16 v0, 0x3f80

    sput v0, Lcom/pinguo/lib/util/Util;->sPixelDensity:F

    const/4 v0, -0x1

    sput v0, Lcom/pinguo/lib/util/Util;->versionCode:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Assert(Z)V
    .registers 2

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    return-void
.end method

.method public static canShowFeedBack()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string/jumbo v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    return-object p0
.end method

.method public static clamp(III)I
    .registers 3

    if-le p0, p2, :cond_3

    :goto_2
    return p2

    :cond_3
    if-ge p0, p1, :cond_7

    move p2, p1

    goto :goto_2

    :cond_7
    move p2, p0

    goto :goto_2
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static dpToPixel(F)F
    .registers 2

    sget v0, Lcom/pinguo/lib/util/Util;->sPixelDensity:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dpToPixel(I)I
    .registers 2

    int-to-float v0, p0

    invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_c

    if-nez p0, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    :goto_10
    :pswitch_10
    return v1

    :pswitch_11
    const/16 v1, 0x5a

    goto :goto_10

    :pswitch_14
    const/16 v1, 0xb4

    goto :goto_10

    :pswitch_17
    const/16 v1, 0x10e

    goto :goto_10

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMyPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getRandomString()Ljava/lang/String;
    .registers 8

    const v0, 0x5f5e100

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const v4, 0x5f5e100

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%8d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/16 v4, 0x30

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getVersionCode()I
    .registers 7

    const/4 v6, -0x1

    sget v3, Lcom/pinguo/lib/util/Util;->versionCode:I

    if-eq v3, v6, :cond_8

    sget v3, Lcom/pinguo/lib/util/Util;->versionCode:I

    :goto_7
    return v3

    :cond_8
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10

    sput v6, Lcom/pinguo/lib/util/Util;->versionCode:I

    :cond_10
    :try_start_10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Lcom/pinguo/lib/util/Util;->versionCode:I
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_22} :catch_25

    :goto_22
    sget v3, Lcom/pinguo/lib/util/Util;->versionCode:I

    goto :goto_7

    :catch_25
    move-exception v1

    sput v6, Lcom/pinguo/lib/util/Util;->versionCode:I

    goto :goto_22
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 8

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/pinguo/lib/util/Util;->sPixelDensity:F

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v4, Lcom/pinguo/lib/util/Util;->SCREEN_HEIGHT:I

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v4, Lcom/pinguo/lib/util/Util;->SCREEN_WIDTH:I

    :try_start_21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/pinguo/lib/util/Util;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/pinguo/lib/util/Util;->PACKAGE_NAME:Ljava/lang/String;

    const/16 v6, 0x4000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/pinguo/lib/util/Util;->VERSION_CODE:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v4, Lcom/pinguo/lib/util/Util;->VERSION_NAME:Ljava/lang/String;
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_3f} :catch_52

    :goto_3f
    invoke-static {p0}, Lcom/pinguo/lib/util/SystemUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/pinguo/lib/util/Util;->PHONE_IMEI:Ljava/lang/String;

    invoke-static {p0}, Lcom/pinguo/lib/util/SystemUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/pinguo/lib/util/Util;->NETWORK_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/lib/util/SystemUtils;->getLocationInfo()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/pinguo/lib/util/Util;->PHONE_LOCALE:Ljava/lang/String;

    return-void

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3f
.end method

.method public static isDirectControlCity(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "\u5317\u4eac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "\u5929\u6d25"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "\u4e0a\u6d77"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "\u91cd\u5e86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static isFastDoubleClick()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/pinguo/lib/util/Util;->lastClickTime:J

    sub-long v2, v0, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_16

    const-wide/16 v4, 0x190

    cmp-long v4, v2, v4

    if-gez v4, :cond_16

    const/4 v4, 0x1

    :goto_15
    return v4

    :cond_16
    sput-wide v0, Lcom/pinguo/lib/util/Util;->lastClickTime:J

    const/4 v4, 0x0

    goto :goto_15
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .registers 8

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v2

    :cond_4
    :try_start_4
    const-string/jumbo v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_25

    sget-object v3, Lcom/pinguo/lib/util/Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Fail to open URI. URI="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_23
    move-exception v0

    goto :goto_3

    :cond_25
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_28} :catch_23

    const/4 v2, 0x1

    goto :goto_3
.end method

.method public static isZh(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "zh"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isZhForNow()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/lib/util/Util;->isZh(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static meterToPixel(F)I
    .registers 3

    const v0, 0x421d7ae1

    mul-float/2addr v0, p0

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static pixelTodp(I)I
    .registers 3

    int-to-float v0, p0

    sget v1, Lcom/pinguo/lib/util/Util;->sPixelDensity:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .registers 9

    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    if-eqz p1, :cond_20

    const/4 v0, -0x1

    :goto_7
    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_20
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static roundOrientation(II)I
    .registers 5

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_10

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_f

    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    :cond_f
    return p1

    :cond_10
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_22

    const/4 v0, 0x1

    :goto_21
    goto :goto_5

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static setViewMargin(Landroid/view/View;IIII)V
    .registers 8

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static showToast(ILandroid/app/Activity;II)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-direct {v0, p1, p0, p3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V

    return-void
.end method

.method public static showToast(ILandroid/view/View;II)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-direct {v0, p1, p0, p3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/view/View;II)V

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V

    return-void
.end method
