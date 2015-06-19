.class public final Lcom/spotify/android/paste/graphics/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/spotify/android/paste/graphics/h;->a:Ljava/util/HashMap;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010034

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/spotify/android/paste/b;->a:I

    aput v2, v0, v1

    sput-object v0, Lcom/spotify/android/paste/graphics/h;->b:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Landroid/graphics/Typeface;
    .registers 5

    const-class v1, Lcom/spotify/android/paste/graphics/h;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f0101a1

    aput v3, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, v2}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1f

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .registers 5

    const-class v1, Lcom/spotify/android/paste/graphics/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/spotify/android/paste/e;->z:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, v2}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/Typeface;
    .registers 7

    const-class v2, Lcom/spotify/android/paste/graphics/h;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lcom/spotify/android/paste/graphics/h;->b:[I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_21

    sget-object v1, Lcom/spotify/android/paste/e;->z:[I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_21
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    :goto_28
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, v0}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_33

    move-result-object v0

    monitor-exit v2

    return-object v0

    :cond_31
    move-object v0, v1

    goto :goto_28

    :catchall_33
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 8

    const/4 v0, 0x0

    const-class v1, Lcom/spotify/android/paste/graphics/h;

    monitor-enter v1

    if-nez p1, :cond_8

    :goto_6
    monitor-exit v1

    return-object v0

    :cond_8
    :try_start_8
    sget-object v2, Lcom/spotify/android/paste/graphics/h;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v0, Lcom/spotify/android/paste/graphics/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    goto :goto_6

    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2b

    move-result-object v2

    :try_start_21
    invoke-static {v2, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_2e

    move-result-object v0

    :goto_25
    :try_start_25
    sget-object v2, Lcom/spotify/android/paste/graphics/h;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2b

    goto :goto_6

    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_2e
    move-exception v2

    :try_start_2f
    const-class v3, Lcom/spotify/android/paste/graphics/h;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to load font asset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_2b

    goto :goto_25
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Landroid/graphics/Typeface;
    .registers 6

    const-class v1, Lcom/spotify/android/paste/graphics/h;

    monitor-enter v1

    :try_start_3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f010021

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1d

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
