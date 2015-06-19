.class public final Lcom/millennialmedia/android/co;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "http://ads.mp.mydas.mobi/pixel?id="

.field private static B:Ljava/lang/String; = null

.field private static C:Z = false

.field public static final a:Ljava/lang/String; = "MMSDK"

.field public static final b:Ljava/lang/String; = "5.3.0-c3980670.a"

.field static c:I = 0x0

.field static d:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final j:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final k:Ljava/lang/String; = "28911"

.field public static final l:Ljava/lang/String; = "28913"

.field public static final m:Ljava/lang/String; = "28914"

.field static final n:Ljava/lang/String; = "MillennialMediaSettings"

.field static final o:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss ZZZZ"

.field static final p:I = 0x258

.field static final q:I = 0x190

.field static final r:I = 0x2710

.field static final s:I = 0x7530

.field static final t:I = 0xbb8

.field static final u:Ljava/lang/String; = ""

.field static v:Ljava/lang/String;

.field static w:Landroid/os/Handler;

.field static x:Ljava/lang/String;

.field private static y:Z

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/millennialmedia/android/co;->d:Z

    const v0, 0x711e41a1

    sput v0, Lcom/millennialmedia/android/co;->z:I

    const-string v0, ","

    sput-object v0, Lcom/millennialmedia/android/co;->v:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/millennialmedia/android/co;->w:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/co;->B:Ljava/lang/String;

    sput-boolean v2, Lcom/millennialmedia/android/co;->C:Z

    :try_start_1c
    const-string v0, "nmsp_speex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/co;->C:Z
    :try_end_24
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1c .. :try_end_24} :catch_25

    :goto_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/millennialmedia/android/co;->C:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lcom/millennialmedia/android/co;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "true"

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "false"

    goto :goto_c
.end method

.method public static a()I
    .registers 2

    const-class v1, Lcom/millennialmedia/android/co;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/millennialmedia/android/co;->z:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/millennialmedia/android/co;->z:I

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method static a(Lcom/google/android/gms/ads/a/b;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/ads/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static a([B)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_a
    array-length v3, p0

    if-ge v0, v3, :cond_24

    const-string v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    packed-switch p0, :pswitch_data_1c

    invoke-static {v0}, Lcom/millennialmedia/android/ck;->a(I)V

    :goto_7
    return-void

    :pswitch_8
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/millennialmedia/android/ck;->a(I)V

    goto :goto_7

    :pswitch_d
    invoke-static {v0}, Lcom/millennialmedia/android/ck;->a(I)V

    goto :goto_7

    :pswitch_11
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/millennialmedia/android/ck;->a(I)V

    goto :goto_7

    :pswitch_16
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/millennialmedia/android/ck;->a(I)V

    goto :goto_7

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_8
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/millennialmedia/android/a;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p0}, Lcom/millennialmedia/android/co;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://ads.mp.mydas.mobi/pixel?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&mmdid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/di;->a(Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/cn;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/millennialmedia/android/cb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/cn;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 9

    const/4 v1, 0x0

    const-string v0, "MMSDK"

    const-string v2, "executing getIDThread"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p0}, Lcom/millennialmedia/android/co;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hpx"

    invoke-static {p0}, Lcom/millennialmedia/android/co;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wpx"

    invoke-static {p0}, Lcom/millennialmedia/android/co;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sk"

    invoke-static {p0}, Lcom/millennialmedia/android/co;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mic"

    invoke-static {p0}, Lcom/millennialmedia/android/co;->s(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "true"

    invoke-static {p0}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1ee

    invoke-static {p0}, Lcom/millennialmedia/android/co;->o(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;

    move-result-object v3

    if-eqz v3, :cond_1ee

    invoke-static {v3}, Lcom/millennialmedia/android/co;->a(Lcom/google/android/gms/ads/a/b;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-virtual {v3}, Lcom/google/android/gms/ads/a/b;->b()Z

    move-result v3

    if-eqz v3, :cond_55

    const-string v0, "false"

    :cond_55
    :goto_55
    if-eqz v2, :cond_1af

    const-string v3, "aaid"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ate"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    :goto_61
    invoke-static {p0}, Lcom/millennialmedia/android/co;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    const-string v0, "cachedvideo"

    const-string v2, "true"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_79

    const-string v0, "dm"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_79
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v0, :cond_97

    const-string v0, "dv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_97
    const-string v0, "sdkversion"

    const-string v2, "5.3.0-c3980670.a"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mcc"

    invoke-static {p0}, Lcom/millennialmedia/android/co;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mnc"

    invoke-static {p0}, Lcom/millennialmedia/android/co;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/millennialmedia/android/co;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bf

    const-string v2, "cn"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bf
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_d7

    const-string v2, "language"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "country"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d7
    :try_start_d7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pkid"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v3, "pknm"

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_f6} :catch_1c5

    :goto_f6
    invoke-static {p0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/as;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_105

    const-string v2, "appsids"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_105
    invoke-static {p0}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_110

    const-string v2, "vid"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_110
    :try_start_110
    invoke-static {p0}, Lcom/millennialmedia/android/co;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/millennialmedia/android/a;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    new-instance v0, Landroid/os/StatFs;

    invoke-static {p0}, Lcom/millennialmedia/android/a;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    :goto_127
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v5, v0

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1eb

    const-string v1, "plugged"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1e7

    const-string v1, "false"

    :goto_14f
    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/high16 v5, 0x42c8

    int-to-float v4, v4

    div-float v4, v5, v4

    const-string v5, "level"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_16a
    if-eqz v0, :cond_177

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_177

    const-string v4, "bl"

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_177
    if-eqz v1, :cond_184

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_184

    const-string v0, "plugged"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_184
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18f

    const-string v0, "space"

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18f
    if-eqz v2, :cond_196

    const-string v0, "conn"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_196
    invoke-static {p0}, Lcom/millennialmedia/android/co;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ab

    const-string v1, "pip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_1ab} :catch_1de

    :cond_1ab
    :goto_1ab
    invoke-static {p1}, Lcom/millennialmedia/android/cn;->c(Ljava/util/Map;)V

    return-void

    :cond_1af
    invoke-static {p0}, Lcom/millennialmedia/android/co;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    const-string v2, "mmdid"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_61

    :cond_1bc
    const-string v0, "cachedvideo"

    const-string v2, "false"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6e

    :catch_1c5
    move-exception v0

    const-string v2, "MMSDK"

    const-string v3, "Can\'t insert package information"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f6

    :cond_1cf
    :try_start_1cf
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1dc} :catch_1de

    goto/16 :goto_127

    :catch_1de
    move-exception v0

    const-string v1, "MMSDK"

    const-string v2, "Exception inserting common parameters: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ab

    :cond_1e7
    :try_start_1e7
    const-string v1, "true"
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1e9} :catch_1de

    goto/16 :goto_14f

    :cond_1eb
    move-object v0, v1

    goto/16 :goto_16a

    :cond_1ee
    move-object v2, v1

    goto/16 :goto_55
.end method

.method static a(Lcom/millennialmedia/android/bp;)V
    .registers 10

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;

    move-result-object v1

    const-string v0, "MMSDK"

    const-string v2, "MMAd External ID: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MMSDK"

    const-string v2, "MMAd Internal ID: %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/millennialmedia/android/bp;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MMSDK"

    const-string v2, "APID: %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/millennialmedia/android/bp;->g:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MMSDK"

    const-string v3, "SD card is %savailable."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/millennialmedia/android/a;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_135

    const-string v0, ""

    :goto_55
    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    const-string v0, "MMSDK"

    const-string v2, "Package: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MMSDK"

    const-string v2, "MMDID: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/millennialmedia/android/co;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MMSDK"

    const-string v2, "Permissions:"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MMSDK"

    const-string v3, "android.permission.ACCESS_NETWORK_STATE is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_139

    const-string v0, "not "

    :goto_9d
    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MMSDK"

    const-string v3, "android.permission.INTERNET is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_13d

    const-string v0, "not "

    :goto_b6
    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MMSDK"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_141

    const-string v0, "not "

    :goto_cf
    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MMSDK"

    const-string v3, "android.permission.VIBRATE is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_144

    const-string v0, "not "

    :goto_e8
    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MMSDK"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_147

    const-string v0, "not "

    :goto_101
    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MMSDK"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION is %spresent"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_14a

    const-string v0, "not "

    :goto_11a
    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MMSDK"

    const-string v2, "Cached Ads:"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-instance v2, Lcom/millennialmedia/android/co$2;

    invoke-direct {v2, v1}, Lcom/millennialmedia/android/co$2;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0, v2}, Lcom/millennialmedia/android/a;->a(Landroid/content/Context;ILcom/millennialmedia/android/c;)V

    goto/16 :goto_5

    :cond_135
    const-string v0, "not "

    goto/16 :goto_55

    :cond_139
    const-string v0, ""

    goto/16 :goto_9d

    :cond_13d
    const-string v0, ""

    goto/16 :goto_b6

    :cond_141
    const-string v0, ""

    goto :goto_cf

    :cond_144
    const-string v0, ""

    goto :goto_e8

    :cond_147
    const-string v0, ""

    goto :goto_101

    :cond_14a
    const-string v0, ""

    goto :goto_11a
.end method

.method static a(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {}, Lcom/millennialmedia/android/co;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Lcom/millennialmedia/android/co;->w:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method static a(Ljava/lang/Runnable;J)V
    .registers 4

    sget-object v0, Lcom/millennialmedia/android/co;->w:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/millennialmedia/android/co;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/millennialmedia/android/co;->B:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/millennialmedia/android/co;->y:Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/millennialmedia/android/cb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/cn;)V

    return-void
.end method

.method public static b()Z
    .registers 1

    sget-boolean v0, Lcom/millennialmedia/android/co;->y:Z

    return v0
.end method

.method static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_d

    :goto_c
    return v2

    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-ne v0, v1, :cond_20

    move v0, v1

    :goto_1e
    move v2, v0

    goto :goto_c

    :cond_20
    move v0, v2

    goto :goto_1e
.end method

.method public static c()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/android/ck;->a()I

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "Whoops!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "The developer has forgot to declare the %s in the manifest file. Please reach out to the developer to remove this error."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x3

    const-string v2, "OK"

    new-instance v3, Lcom/millennialmedia/android/co$1;

    invoke-direct {v3}, Lcom/millennialmedia/android/co$1;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_36

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_19

    :catch_48
    move-exception v0

    const-string v1, "MMSDK"

    const-string v2, "Exception getting ip information: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_52
    return-object v0

    :cond_53
    const/16 v4, 0x25

    :try_start_55
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_5f

    :goto_5b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_5f
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    :cond_65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_68} :catch_48

    move-result-object v0

    goto :goto_52
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_e

    const-string v0, "unknown"

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-ne v1, v2, :cond_6b

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-ne v1, v2, :cond_33

    const-string v0, "wifi"

    goto :goto_d

    :cond_33
    if-nez v1, :cond_68

    packed-switch v0, :pswitch_data_6e

    const-string v0, "unknown"

    goto :goto_d

    :pswitch_3b
    const-string v0, "1xrtt"

    goto :goto_d

    :pswitch_3e
    const-string v0, "cdma"

    goto :goto_d

    :pswitch_41
    const-string v0, "edge"

    goto :goto_d

    :pswitch_44
    const-string v0, "ehrpd"

    goto :goto_d

    :pswitch_47
    const-string v0, "evdo_0"

    goto :goto_d

    :pswitch_4a
    const-string v0, "evdo_a"

    goto :goto_d

    :pswitch_4d
    const-string v0, "evdo_b"

    goto :goto_d

    :pswitch_50
    const-string v0, "gprs"

    goto :goto_d

    :pswitch_53
    const-string v0, "hsdpa"

    goto :goto_d

    :pswitch_56
    const-string v0, "hspa"

    goto :goto_d

    :pswitch_59
    const-string v0, "hspap"

    goto :goto_d

    :pswitch_5c
    const-string v0, "hsupa"

    goto :goto_d

    :pswitch_5f
    const-string v0, "iden"

    goto :goto_d

    :pswitch_62
    const-string v0, "lte"

    goto :goto_d

    :pswitch_65
    const-string v0, "umts"

    goto :goto_d

    :cond_68
    const-string v0, "unknown"

    goto :goto_d

    :cond_6b
    const-string v0, "offline"

    goto :goto_d

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_50
        :pswitch_41
        :pswitch_65
        :pswitch_3e
        :pswitch_47
        :pswitch_4a
        :pswitch_3b
        :pswitch_53
        :pswitch_5c
        :pswitch_56
        :pswitch_5f
        :pswitch_4d
        :pswitch_62
        :pswitch_44
        :pswitch_59
    .end packed-switch
.end method

.method static d()Z
    .registers 2

    sget-object v0, Lcom/millennialmedia/android/co;->w:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static declared-synchronized e(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const-class v2, Lcom/millennialmedia/android/co;

    monitor-enter v2

    :try_start_4
    sget-object v1, Lcom/millennialmedia/android/co;->B:Ljava/lang/String;

    if-eqz v1, :cond_c

    sget-object v0, Lcom/millennialmedia/android/co;->B:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_55

    :cond_a
    :goto_a
    monitor-exit v2

    return-object v0

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "android_id"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mmh_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_55

    :try_start_1f
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/android/co;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/co;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4e
    .catchall {:try_start_1f .. :try_end_4e} :catchall_55
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4e} :catch_58

    :try_start_4e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/co;->B:Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_55

    goto :goto_a

    :catchall_55
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_58
    move-exception v1

    :try_start_59
    const-string v3, "MMSDK"

    const-string v4, "Exception calculating hash: "

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_55

    goto :goto_a
.end method

.method static e()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static f(Landroid/content/Context;)F
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method static f()Z
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static g(Landroid/content/Context;)V
    .registers 3

    const/4 v1, -0x1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_12

    const-string v0, "INTERNET permission"

    invoke-static {p0, v0}, Lcom/millennialmedia/android/co;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_12
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_23

    const-string v0, "ACCESS_NETWORK_STATE permission"

    invoke-static {p0, v0}, Lcom/millennialmedia/android/co;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_23
    return-void
.end method

.method static g()Z
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static h(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_4
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.millennialmedia.android.MMActivity"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string v1, "MMSDK"

    const-string v2, "Activity MMActivity not declared in AndroidManifest.xml"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "MMActivity class"

    invoke-static {p0, v0}, Lcom/millennialmedia/android/co;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_10
.end method

.method static h()Z
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static synthetic i()Z
    .registers 1

    sget-boolean v0, Lcom/millennialmedia/android/co;->y:Z

    return v0
.end method

.method static i(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-boolean v0, Lcom/millennialmedia/android/a;->d:Z

    if-eqz v0, :cond_25

    :cond_23
    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/millennialmedia/android/co;->l(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    if-nez v1, :cond_1c

    invoke-static {p0}, Lcom/millennialmedia/android/co;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1c

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/millennialmedia/android/co;->l(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    if-nez v1, :cond_1b

    invoke-static {p0}, Lcom/millennialmedia/android/co;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1b

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    iget v0, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method static l(Landroid/content/Context;)Landroid/content/res/Configuration;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static o(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Lcom/google/android/gms/common/g; {:try_start_1 .. :try_end_4} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_18
    .catch Lcom/google/android/gms/common/h; {:try_start_1 .. :try_end_4} :catch_21

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    const-string v2, "MMSDK"

    const-string v3, "Unrecoverable error connecting to Google Play services (e.g.,the old version of the service doesnt support getting AdvertisingId"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_f
    move-exception v1

    const-string v2, "MMSDK"

    const-string v3, "Google Play services is not available entirely."

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_18
    move-exception v1

    const-string v2, "MMSDK"

    const-string v3, "IllegalStateException: "

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_21
    move-exception v1

    const-string v2, "MMSDK"

    const-string v3, "Google Play Services is not installed, up-to-date, or enabled"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/as;->b()V

    invoke-virtual {v0}, Lcom/millennialmedia/android/as;->c()V

    return-void
.end method

.method static s(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static t(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static u(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static w(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_1a

    const-string v0, "default"

    :goto_f
    return-object v0

    :pswitch_10
    const-string v0, "portrait"

    goto :goto_f

    :pswitch_13
    const-string v0, "landscape"

    goto :goto_f

    :pswitch_16
    const-string v0, "square"

    goto :goto_f

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method static final y(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "false"

    :goto_14
    return-object v0

    :cond_15
    const-string v0, "true"

    goto :goto_14
.end method

.method private static z(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/millennialmedia/android/co;->f(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
