.class public Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;
.super Ljava/lang/Object;
.source "BackGroudSeletor.java"


# static fields
.field static EMPTY_STATE_SET:[I

.field static ENABLED_STATE_SET:[I

.field static PRESSED_ENABLED_STATE_SET:[I

.field private static pix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->PRESSED_ENABLED_STATE_SET:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->ENABLED_STATE_SET:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->EMPTY_STATE_SET:[I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->pix:Ljava/lang/String;

    return-void

    nop

    :array_1e
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .registers 6

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-static {v3, p1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3, p1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v3, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v3, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static getPix()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->pix:Ljava/lang/String;

    return-object v0
.end method

.method public static getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 10

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->pix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->pix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_5c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "480x800"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5c
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6d} :catch_6f

    move-object v2, v1

    :goto_6e
    return-object v2

    :catch_6f
    move-exception v3

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_75
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e
.end method

.method public static setPix(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->pix:Ljava/lang/String;

    return-void
.end method

.method public static zipPic(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
