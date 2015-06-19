.class public Lcom/spotify/mobile/android/util/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# static fields
.field static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "installation_id"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/util/ao;->a:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/ao;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()I
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static j()Lcom/spotify/mobile/android/util/ap;
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/util/ap;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/ap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ao;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ao;->a:Lcom/spotify/mobile/android/util/cz;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ao;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ao;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public final d()D
    .registers 8

    const-wide/high16 v5, 0x4000

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ao;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v0, v3, v0

    float-to-double v3, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ao;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "0"

    :cond_10
    return-object v0
.end method

.method public final declared-synchronized f()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/spotify/mobile/android/util/ao;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/ao;->f()Z

    move-result v0

    const-string v1, "Installation ID not generated, please do so first"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->b(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/ao;->k()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/ao;->f()Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    :goto_8
    const-string v1, "Installation ID already generated"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->b(ZLjava/lang/Object;)V

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x82

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ao;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ao;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_36

    monitor-exit p0

    return-void

    :cond_34
    const/4 v0, 0x0

    goto :goto_8

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ao;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
