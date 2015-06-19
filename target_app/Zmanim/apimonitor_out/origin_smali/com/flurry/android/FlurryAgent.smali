.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static final f:Lcom/flurry/android/FlurryAgent;

.field private static g:J

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Landroid/location/Criteria;

.field private static volatile kInsecureReportUrl:Ljava/lang/String;

.field private static volatile kSecureReportUrl:Ljava/lang/String;

.field private static l:Z

.field private static m:Lcom/flurry/android/AppCircle;


# instance fields
.field private A:Z

.field private B:J

.field private C:Ljava/util/List;

.field private D:J

.field private E:J

.field private F:J

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:B

.field private J:Ljava/lang/String;

.field private K:B

.field private L:Ljava/lang/Long;

.field private M:I

.field private N:Landroid/location/Location;

.field private O:Ljava/util/Map;

.field private P:Ljava/util/List;

.field private Q:Z

.field private R:I

.field private S:Ljava/util/List;

.field private T:I

.field private U:Lcom/flurry/android/n;

.field private final n:Landroid/os/Handler;

.field private o:Ljava/io/File;

.field private p:Z

.field private q:Z

.field private r:J

.field private s:Ljava/util/Map;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/util/List;

.field private y:Landroid/location/LocationManager;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v2, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "http://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    const-string v0, "https://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->kSecureReportUrl:Ljava/lang/String;

    sput-object v2, Lcom/flurry/android/FlurryAgent;->b:Ljava/lang/String;

    const-string v0, "http://ad.flurry.com/getCanvas.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    sput-object v2, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    const-string v0, "http://ad.flurry.com/getAndroidApp.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->e:Ljava/lang/String;

    new-instance v0, Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/flurry/android/FlurryAgent;->g:J

    sput-boolean v4, Lcom/flurry/android/FlurryAgent;->h:Z

    sput-boolean v3, Lcom/flurry/android/FlurryAgent;->i:Z

    sput-boolean v4, Lcom/flurry/android/FlurryAgent;->j:Z

    sput-object v2, Lcom/flurry/android/FlurryAgent;->k:Landroid/location/Criteria;

    sput-boolean v3, Lcom/flurry/android/FlurryAgent;->l:Z

    new-instance v0, Lcom/flurry/android/AppCircle;

    invoke-direct {v0}, Lcom/flurry/android/AppCircle;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->m:Lcom/flurry/android/AppCircle;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->q:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->w:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->H:Ljava/lang/String;

    iput-byte v1, p0, Lcom/flurry/android/FlurryAgent;->I:B

    iput-byte v1, p0, Lcom/flurry/android/FlurryAgent;->K:B

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->n:Landroid/os/Handler;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .registers 7

    const/4 v3, 0x0

    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_7

    move-object v0, v3

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/android/n;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v0

    goto :goto_6

    :catch_10
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    goto :goto_6
.end method

.method static a(Ljava/lang/String;)Lcom/flurry/android/Offer;
    .registers 2

    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p0}, Lcom/flurry/android/n;->a(Ljava/lang/String;)Lcom/flurry/android/Offer;

    move-result-object v0

    goto :goto_5
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_13
    return-object v0

    :cond_14
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v1, :cond_27

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-object v0

    goto :goto_13

    :catch_1f
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    const-string v0, "Unknown"

    goto :goto_13
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private declared-synchronized a(Landroid/content/Context;Z)V
    .registers 8

    monitor-enter p0

    if-eqz p1, :cond_14

    :try_start_3
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_14

    const-string v0, "FlurryAgent"

    const-string v1, "onEndSession called without context from corresponding onStartSession"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string v0, "FlurryAgent"

    const-string v1, "Ending session"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->h()V

    if-nez p1, :cond_8c

    const/4 v0, 0x0

    :goto_2d
    if-eqz p1, :cond_5f

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndSession called from different application package, expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->r:J

    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->E:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->F:J

    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->e()V

    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->g()V

    if-nez p2, :cond_81

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->n:Landroid/os/Handler;

    new-instance v2, Lcom/flurry/android/b;

    invoke-direct {v2, p0, v0}, Lcom/flurry/android/b;-><init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V

    sget-wide v3, Lcom/flurry/android/FlurryAgent;->g:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_81
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->b()V
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_91

    :cond_8a
    monitor-exit p0

    return-void

    :cond_8c
    :try_start_8c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_91

    move-result-object v0

    goto :goto_2d

    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2} :catch_29

    :try_start_2
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    if-nez v0, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->r:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/flurry/android/FlurryAgent;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_26

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    :try_start_20
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->c(Z)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_29

    :cond_23
    :goto_23
    return-void

    :cond_24
    move v0, v4

    goto :goto_1c

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v0
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_29} :catch_29

    :catch_29
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    :try_start_3
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :cond_7
    monitor-enter p0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_13

    :try_start_8
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_10

    const/4 v0, 0x1

    :try_start_c
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->c(Z)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_13

    :goto_f
    return-void

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_13} :catch_13

    :catch_13
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private a(Ljava/io/DataInputStream;)V
    .registers 14

    const/4 v11, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_1a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    packed-switch v6, :pswitch_data_102

    :pswitch_25
    const-string v7, "FlurryAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown chunkType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    :cond_40
    :goto_40
    :pswitch_40
    const/16 v0, 0x108

    if-ne v6, v0, :cond_1a

    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_4c

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/FlurryAgent;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    :cond_4c
    return-void

    :pswitch_4d
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    goto :goto_40

    :pswitch_51
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    new-array v8, v7, [Lcom/flurry/android/o;

    move v9, v11

    :goto_5c
    if-ge v9, v7, :cond_68

    new-instance v10, Lcom/flurry/android/o;

    invoke-direct {v10, p1}, Lcom/flurry/android/o;-><init>(Ljava/io/DataInput;)V

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5c

    :cond_68
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :pswitch_70
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    move v7, v11

    :goto_75
    if-ge v7, v0, :cond_40

    new-instance v8, Lcom/flurry/android/AdImage;

    invoke-direct {v8, p1}, Lcom/flurry/android/AdImage;-><init>(Ljava/io/DataInput;)V

    iget-wide v9, v8, Lcom/flurry/android/AdImage;->a:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_75

    :pswitch_88
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v7, v11

    :goto_8d
    if-ge v7, v0, :cond_40

    new-instance v8, Lcom/flurry/android/e;

    invoke-direct {v8, p1}, Lcom/flurry/android/e;-><init>(Ljava/io/DataInput;)V

    iget-object v9, v8, Lcom/flurry/android/e;->a:Ljava/lang/String;

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8d

    :pswitch_9c
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_40

    :pswitch_a0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    move v7, v11

    :goto_a5
    if-ge v7, v0, :cond_40

    new-instance v8, Lcom/flurry/android/c;

    invoke-direct {v8, p1}, Lcom/flurry/android/c;-><init>(Ljava/io/DataInput;)V

    iget-byte v9, v8, Lcom/flurry/android/c;->a:B

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_a5

    :pswitch_b8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    move v8, v11

    :goto_bd
    if-ge v8, v7, :cond_40

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/c;

    if-eqz v0, :cond_d2

    invoke-virtual {v0, p1}, Lcom/flurry/android/c;->a(Ljava/io/DataInput;)V

    :cond_d2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_bd

    :pswitch_d6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v7, v11

    :goto_db
    if-ge v7, v0, :cond_40

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_db

    :pswitch_f3
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_40

    :pswitch_f8
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_40

    :pswitch_fd
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_40

    :pswitch_data_102
    .packed-switch 0x102
        :pswitch_4d
        :pswitch_51
        :pswitch_25
        :pswitch_25
        :pswitch_70
        :pswitch_88
        :pswitch_40
        :pswitch_25
        :pswitch_a0
        :pswitch_25
        :pswitch_d6
        :pswitch_f8
        :pswitch_9c
        :pswitch_b8
        :pswitch_f3
        :pswitch_fd
    .end packed-switch
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    if-nez v0, :cond_1f

    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError called before onStartSession.  Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_52

    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    :cond_1f
    :try_start_1f
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->M:I

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1d

    new-instance v0, Lcom/flurry/android/u;

    invoke-direct {v0}, Lcom/flurry/android/u;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/flurry/android/u;->a:J

    invoke-static {p1}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/u;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/u;->c:Ljava/lang/String;

    invoke-static {p3}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/u;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_1f .. :try_end_51} :catchall_52

    goto :goto_1d

    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 12

    const/16 v7, 0x64

    const/16 v6, 0x1f40

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    if-nez v0, :cond_23

    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent called before onStartSession.  Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_98

    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    :cond_23
    :try_start_23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->E:J

    sub-long v3, v0, v2

    invoke-static {p1}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/j;

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v7, :cond_9b

    new-instance v0, Lcom/flurry/android/j;

    invoke-direct {v0}, Lcom/flurry/android/j;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Lcom/flurry/android/j;->a:I

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    :goto_54
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->h:Z

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_ed

    iget v0, p0, Lcom/flurry/android/FlurryAgent;->R:I

    if-ge v0, v6, :cond_ed

    if-nez p2, :cond_f2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v2, v0

    :goto_6b
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v5, 0xa

    if-le v0, v5, :cond_c3

    const-string v0, "FlurryAgent"

    invoke-static {v0}, Lcom/flurry/android/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxEventParams exceeded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_23 .. :try_end_97} :catchall_98

    goto :goto_21

    :catchall_98
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9b
    :try_start_9b
    const-string v0, "FlurryAgent"

    invoke-static {v0}, Lcom/flurry/android/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MaxEventIds exceeded: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_bc
    iget v2, v0, Lcom/flurry/android/j;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/flurry/android/j;->a:I

    goto :goto_54

    :cond_c3
    new-instance v0, Lcom/flurry/android/m;

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/m;-><init>(Ljava/lang/String;Ljava/util/Map;JZ)V

    invoke-virtual {v0}, Lcom/flurry/android/m;->b()[B

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lcom/flurry/android/FlurryAgent;->R:I

    add-int/2addr v1, v2

    if-gt v1, v6, :cond_e4

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/flurry/android/FlurryAgent;->R:I

    invoke-virtual {v0}, Lcom/flurry/android/m;->b()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->R:I

    goto/16 :goto_21

    :cond_e4
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->R:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->Q:Z

    goto/16 :goto_21

    :cond_ed
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->Q:Z
    :try_end_f0
    .catchall {:try_start_9b .. :try_end_f0} :catchall_98

    goto/16 :goto_21

    :cond_f2
    move-object v2, p2

    goto/16 :goto_6b
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p2}, Lcom/flurry/android/n;->a(Ljava/util/Map;)V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/o;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_d

    aget-object v4, v0, v3

    if-eqz v4, :cond_31

    iget-object v5, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    iget-object v6, v4, Lcom/flurry/android/o;->f:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/flurry/android/n;->a(J)Lcom/flurry/android/AdImage;

    move-result-object v5

    if-eqz v5, :cond_31

    iput-object v5, v4, Lcom/flurry/android/o;->h:Lcom/flurry/android/AdImage;

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_34
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_41
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/e;

    iget-byte v2, v1, Lcom/flurry/android/e;->b:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/flurry/android/o;

    if-eqz v2, :cond_68

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    iget-byte v0, v1, Lcom/flurry/android/e;->c:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/c;

    if-eqz v0, :cond_41

    iput-object v0, v1, Lcom/flurry/android/e;->d:Lcom/flurry/android/c;

    goto :goto_41

    :cond_79
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, v3, p3, p4, p5}, Lcom/flurry/android/n;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static a(Z)V
    .registers 2

    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p0}, Lcom/flurry/android/n;->a(Z)V

    goto :goto_4
.end method

.method static a()Z
    .registers 1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->g()Z

    move-result v0

    return v0
.end method

.method private a([B)Z
    .registers 6

    const/4 v3, 0x0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    :goto_7
    if-nez v0, :cond_e

    move v0, v3

    :cond_a
    :goto_a
    return v0

    :cond_b
    sget-object v0, Lcom/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    goto :goto_7

    :cond_e
    :try_start_e
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->a([BLjava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_19

    move-result v0

    :goto_12
    if-nez v0, :cond_a

    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    if-eqz v1, :cond_a

    goto :goto_a

    :catch_19
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, "Sending report exception"

    invoke-static {v1, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    goto :goto_12
.end method

.method private a([BLjava/lang/String;)Z
    .registers 9

    const/4 v5, 0x1

    const-string v0, "local"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v5

    :goto_a
    return v0

    :cond_b
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending report to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    monitor-enter p0

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_a5

    :try_start_4c
    const-string v0, "FlurryAgent"

    const-string v2, "Report successful"

    invoke-static {v0, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a3

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_7e
    .catchall {:try_start_4c .. :try_end_7e} :catchall_a0

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a3

    :try_start_85
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/io/DataInputStream;)V
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_9b

    :try_start_91
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    move v0, v5

    :goto_95
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_a0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/util/List;

    goto/16 :goto_a

    :catchall_9b
    move-exception v1

    :try_start_9c
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v1

    :catchall_a0
    move-exception v0

    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_a0

    throw v0

    :cond_a3
    move v0, v5

    goto :goto_95

    :cond_a5
    :try_start_a5
    const-string v1, "FlurryAgent"

    const-string v2, "Report failed"

    invoke-static {v1, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_a0

    goto :goto_95
.end method

.method public static addUserCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private b(Landroid/content/Context;)Landroid/location/Location;
    .registers 9

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_46

    :cond_10
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    monitor-enter p0

    :try_start_19
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->y:Landroid/location/LocationManager;

    if-nez v1, :cond_40

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->y:Landroid/location/LocationManager;

    :goto_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_43

    sget-object v1, Lcom/flurry/android/FlurryAgent;->k:Landroid/location/Criteria;

    if-nez v1, :cond_29

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    :cond_29
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_46

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_3f
    return-object v0

    :cond_40
    :try_start_40
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->y:Landroid/location/LocationManager;

    goto :goto_1f

    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method static b()Lcom/flurry/android/n;
    .registers 1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    return-object v0
.end method

.method private declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    const/4 v8, 0x0

    const/4 v7, 0x1

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartSession called with different api keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_44

    const-string v0, "FlurryAgent"

    const-string v1, "onStartSession called with duplicate context, use a specific Activity or Service as context instead of using a global context"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    if-nez v0, :cond_214

    iput-object p2, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryagent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->j:Z

    if-eqz v0, :cond_7b

    new-instance v0, Lcom/flurry/android/f;

    invoke-direct {v0}, Lcom/flurry/android/f;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_7b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->p:Z

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->v:Ljava/lang/String;

    if-nez v1, :cond_8c

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->v:Ljava/lang/String;

    :cond_8c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    if-eqz v2, :cond_c0

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c0

    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartSession called from different application packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->u:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->r:J

    sub-long v3, v1, v3

    sget-wide v5, Lcom/flurry/android/FlurryAgent;->g:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_26f

    const-string v3, "FlurryAgent"

    const-string v4, "Starting new session"

    invoke-static {v3, v4}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/flurry/android/FlurryAgent;->D:J

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->E:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->F:J

    const-string v1, ""

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->J:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/android/FlurryAgent;->M:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->Q:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/android/FlurryAgent;->R:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/android/FlurryAgent;->T:I

    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->q:Z

    if-nez v1, :cond_1cd

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_157
    .catchall {:try_start_3 .. :try_end_157} :catchall_224

    move-result v1

    if-eqz v1, :cond_188

    :try_start_15a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_166
    .catchall {:try_start_15a .. :try_end_166} :catchall_227
    .catch Ljava/lang/Throwable; {:try_start_15a .. :try_end_166} :catch_216

    :try_start_166
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    const v3, 0xb5fa

    if-ne v1, v3, :cond_172

    invoke-direct {p0, v2}, Lcom/flurry/android/FlurryAgent;->b(Ljava/io/DataInputStream;)V
    :try_end_172
    .catchall {:try_start_166 .. :try_end_172} :catchall_283
    .catch Ljava/lang/Throwable; {:try_start_166 .. :try_end_172} :catch_286

    :cond_172
    :try_start_172
    invoke-static {v2}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_175
    .catchall {:try_start_172 .. :try_end_175} :catchall_224

    :goto_175
    :try_start_175
    iget-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->q:Z

    if-nez v1, :cond_188

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_188

    const-string v1, "FlurryAgent"

    const-string v2, "Cannot delete persistence file"

    invoke-static {v1, v2}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_188
    .catchall {:try_start_175 .. :try_end_188} :catchall_224
    .catch Ljava/lang/Throwable; {:try_start_175 .. :try_end_188} :catch_22d

    :cond_188
    :goto_188
    :try_start_188
    iget-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->q:Z

    if-nez v1, :cond_1cd

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    iget-wide v1, p0, Lcom/flurry/android/FlurryAgent;->D:J

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->B:J

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_237

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_237

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_237

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_237

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AND"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1c8
    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->q:Z

    :cond_1cd
    iget-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->w:Z

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->n:Landroid/os/Handler;

    new-instance v3, Lcom/flurry/android/d;

    invoke-direct {v3, p0, v0, v1}, Lcom/flurry/android/d;-><init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/flurry/android/a;

    invoke-direct {v0}, Lcom/flurry/android/a;-><init>()V

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/android/a;->b:Ljava/lang/String;

    iget-wide v1, p0, Lcom/flurry/android/FlurryAgent;->B:J

    iput-wide v1, v0, Lcom/flurry/android/a;->c:J

    iget-wide v1, p0, Lcom/flurry/android/FlurryAgent;->D:J

    iput-wide v1, v0, Lcom/flurry/android/a;->d:J

    iget-wide v1, p0, Lcom/flurry/android/FlurryAgent;->E:J

    iput-wide v1, v0, Lcom/flurry/android/a;->e:J

    sget-object v1, Lcom/flurry/android/FlurryAgent;->b:Ljava/lang/String;

    if-eqz v1, :cond_26c

    sget-object v1, Lcom/flurry/android/FlurryAgent;->b:Ljava/lang/String;

    :goto_1f8
    iput-object v1, v0, Lcom/flurry/android/a;->f:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/a;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->n:Landroid/os/Handler;

    iput-object v1, v0, Lcom/flurry/android/a;->h:Landroid/os/Handler;

    sget-boolean v1, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v1, :cond_214

    new-instance v1, Lcom/flurry/android/n;

    invoke-direct {v1, p1, v0}, Lcom/flurry/android/n;-><init>(Landroid/content/Context;Lcom/flurry/android/a;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->a()V
    :try_end_214
    .catchall {:try_start_188 .. :try_end_214} :catchall_224

    :cond_214
    :goto_214
    monitor-exit p0

    return-void

    :catch_216
    move-exception v1

    move-object v2, v8

    :goto_218
    :try_start_218
    const-string v3, "FlurryAgent"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21f
    .catchall {:try_start_218 .. :try_end_21f} :catchall_283

    :try_start_21f
    invoke-static {v2}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_222
    .catchall {:try_start_21f .. :try_end_222} :catchall_224

    goto/16 :goto_175

    :catchall_224
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_227
    move-exception v0

    move-object v1, v8

    :goto_229
    :try_start_229
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_22d
    move-exception v1

    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_188

    :cond_237
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v3, 0x25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    mul-int/lit8 v7, v7, 0x25

    int-to-long v7, v7

    add-long/2addr v5, v7

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v1, v2, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1c8

    :cond_26c
    sget-object v1, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    goto :goto_1f8

    :cond_26f
    const-string v0, "FlurryAgent"

    const-string v1, "Continuing previous session"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_282
    .catchall {:try_start_229 .. :try_end_282} :catchall_224

    goto :goto_214

    :catchall_283
    move-exception v0

    move-object v1, v2

    goto :goto_229

    :catch_286
    move-exception v1

    goto :goto_218
.end method

.method private declared-synchronized b(Ljava/io/DataInputStream;)V
    .registers 6

    const/4 v1, 0x2

    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    if-le v0, v1, :cond_24

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown agent file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_24
    if-lt v0, v1, :cond_59

    :try_start_26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/FlurryAgent;->B:J

    :goto_44
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    if-eqz v0, :cond_56

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_44

    :cond_56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->q:Z
    :try_end_59
    .catchall {:try_start_26 .. :try_end_59} :catchall_21

    :cond_59
    :goto_59
    monitor-exit p0

    return-void

    :cond_5b
    :try_start_5b
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Api keys do not match, old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_5b .. :try_end_7f} :catchall_21

    goto :goto_59
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/m;

    invoke-virtual {v0, p1}, Lcom/flurry/android/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/flurry/android/m;->a()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Z)[B
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_115
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_11c

    const/16 v0, 0xf

    :try_start_f
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_61

    if-eqz p1, :cond_61

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_1c
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_66
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_51} :catch_52

    goto :goto_3a

    :catch_52
    move-exception v0

    move-object v1, v2

    :goto_54
    :try_start_54
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_119

    :try_start_5b
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_6c

    move-object v0, v7

    :goto_5f
    monitor-exit p0

    return-object v0

    :cond_61
    const/4 v0, 0x0

    :try_start_62
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_52

    goto :goto_1c

    :catchall_66
    move-exception v0

    move-object v1, v2

    :goto_68
    :try_start_68
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6f
    const-wide/16 v3, 0x0

    :try_start_71
    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :cond_78
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v0, 0x6c

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->v:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->B:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->D:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v0, "device.model"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v0, "build.brand"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v0, "build.id"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v0, "version.release"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v0, "build.device"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v0, "build.product"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v4, v6

    :goto_ef
    if-ge v4, v3, :cond_100

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_ef

    :cond_100
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_10f
    .catchall {:try_start_71 .. :try_end_10f} :catchall_66
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_10f} :catch_52

    move-result-object v0

    :try_start_110
    invoke-static {v2}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_6c

    goto/16 :goto_5f

    :catchall_115
    move-exception v0

    move-object v1, v7

    goto/16 :goto_68

    :catchall_119
    move-exception v0

    goto/16 :goto_68

    :catch_11c
    move-exception v0

    move-object v1, v7

    goto/16 :goto_54
.end method

.method static c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/flurry/android/FlurryAgent;->e:Ljava/lang/String;

    goto :goto_6
.end method

.method private c(Z)V
    .registers 5

    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Z)[B

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->a([B)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "FlurryAgent"

    const-string v1, "Done sending agent report"

    invoke-static {v0, v1}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->g()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_20

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :catch_20
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public static clearUserCookies()V
    .registers 1

    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->j()V

    goto :goto_4
.end method

.method static synthetic d()Lcom/flurry/android/FlurryAgent;
    .registers 1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    return-object v0
.end method

.method private e()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_162
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_16b

    const/4 v0, 0x1

    :try_start_c
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->v:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->D:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->F:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->H:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/flurry/android/FlurryAgent;->I:B

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->J:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    if-nez v0, :cond_9a

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :goto_3f
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->T:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, Lcom/flurry/android/FlurryAgent;->K:B

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/Long;

    if-nez v0, :cond_c0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :goto_59
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/j;

    iget v0, v0, Lcom/flurry/android/j;->a:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_8c
    .catchall {:try_start_c .. :try_end_8c} :catchall_ba
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_8c} :catch_8d

    goto :goto_6c

    :catch_8d
    move-exception v0

    move-object v1, v3

    :goto_8f
    :try_start_8f
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_168

    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    :goto_99
    return-void

    :cond_9a
    const/4 v0, 0x1

    :try_start_9b
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_b9
    .catchall {:try_start_9b .. :try_end_b9} :catchall_ba
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_b9} :catch_8d

    goto :goto_3f

    :catchall_ba
    move-exception v0

    move-object v1, v3

    :goto_bc
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_c0
    const/4 v0, 0x1

    :try_start_c1
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_59

    :cond_ce
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_dd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/m;

    invoke-virtual {v0}, Lcom/flurry/android/m;->b()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_dd

    :cond_f1
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->Q:Z

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget v0, p0, Lcom/flurry/android/FlurryAgent;->M:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/u;

    iget-wide v4, v0, Lcom/flurry/android/u;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v4, v0, Lcom/flurry/android/u;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/flurry/android/u;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/flurry/android/u;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_10a

    :cond_12b
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_150

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->U:Lcom/flurry/android/n;

    invoke-virtual {v0}, Lcom/flurry/android/n;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_140
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_154

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/y;

    invoke-virtual {v0, v3}, Lcom/flurry/android/y;->a(Ljava/io/DataOutput;)V

    goto :goto_140

    :cond_150
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :cond_154
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15d
    .catchall {:try_start_c1 .. :try_end_15d} :catchall_ba
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_15d} :catch_8d

    invoke-static {v3}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    goto/16 :goto_99

    :catchall_162
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_bc

    :catchall_168
    move-exception v0

    goto/16 :goto_bc

    :catch_16b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_8f
.end method

.method public static enableAppCircle()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAgent;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to signify the end of event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private declared-synchronized f()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->T:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->T:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .registers 7

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create persistent dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_9e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2c} :catch_91

    const/4 v0, 0x0

    :try_start_2d
    invoke-static {v0}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_8e

    :goto_30
    monitor-exit p0

    return-void

    :cond_32
    :try_start_32
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->o:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_9e
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3e} :catch_91

    const v0, 0xb5fa

    :try_start_41
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->B:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v0

    :goto_65
    if-ltz v2, :cond_86

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v3, v0

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0xc350

    if-gt v4, v5, :cond_86

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_65

    :cond_86
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_8a
    .catchall {:try_start_41 .. :try_end_8a} :catchall_a4
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_8a} :catch_a6

    :try_start_8a
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_30

    :catchall_8e
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_91
    move-exception v0

    move-object v1, v4

    :goto_93
    :try_start_93
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_a4

    :try_start_9a
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    goto :goto_30

    :catchall_9e
    move-exception v0

    move-object v1, v4

    :goto_a0
    invoke-static {v1}, Lcom/flurry/android/h;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_8e

    :catchall_a4
    move-exception v0

    goto :goto_a0

    :catch_a6
    move-exception v0

    goto :goto_93
.end method

.method public static getAgentVersion()I
    .registers 1

    const/16 v0, 0x6c

    return v0
.end method

.method public static getAppCircle()Lcom/flurry/android/AppCircle;
    .registers 1

    sget-object v0, Lcom/flurry/android/FlurryAgent;->m:Lcom/flurry/android/AppCircle;

    return-object v0
.end method

.method public static getForbidPlaintextFallback()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized h()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->y:Landroid/location/LocationManager;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->y:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 7

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static logEvent(Ljava/lang/String;Z)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .registers 4

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Z)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static onEvent(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public static onPageView()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;->f()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method public static setAge(I)V
    .registers 8

    const/4 v6, 0x1

    if-lez p0, :cond_2d

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v0, v6, v6}, Ljava/util/Date;-><init>(III)V

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/Long;

    :cond_2d
    return-void
.end method

.method public static setCanvasUrl(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/flurry/android/FlurryAgent;->b:Ljava/lang/String;

    return-void
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .registers 4

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iget-boolean v1, v1, Lcom/flurry/android/FlurryAgent;->p:Z

    if-eqz v1, :cond_12

    const-string v1, "FlurryAgent"

    const-string v2, "Cannot setCaptureUncaughtExceptions after onSessionStart"

    invoke-static {v1, v2}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    :goto_11
    return-void

    :cond_12
    sput-boolean p0, Lcom/flurry/android/FlurryAgent;->j:Z

    monitor-exit v0

    goto :goto_11

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static setContinueSessionMillis(J)V
    .registers 4

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    :try_start_3
    sput-wide p0, Lcom/flurry/android/FlurryAgent;->g:J

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static setDefaultNoAdsMessage(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-nez p0, :cond_c

    const-string v0, ""

    :goto_9
    sput-object v0, Lcom/flurry/android/n;->b:Ljava/lang/String;

    goto :goto_4

    :cond_c
    move-object v0, p0

    goto :goto_9
.end method

.method public static setGender(B)V
    .registers 3

    packed-switch p0, :pswitch_data_e

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    const/4 v1, -0x1

    iput-byte v1, v0, Lcom/flurry/android/FlurryAgent;->K:B

    :goto_8
    return-void

    :pswitch_9
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iput-byte p0, v0, Lcom/flurry/android/FlurryAgent;->K:B

    goto :goto_8

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static setGetAppUrl(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    return-void
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .registers 3

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/flurry/android/FlurryAgent;->k:Landroid/location/Criteria;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static setLogEnabled(Z)V
    .registers 3

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    if-eqz p0, :cond_a

    :try_start_5
    invoke-static {}, Lcom/flurry/android/z;->b()V

    :goto_8
    monitor-exit v0

    return-void

    :cond_a
    invoke-static {}, Lcom/flurry/android/z;->a()V

    goto :goto_8

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static setLogEvents(Z)V
    .registers 3

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, Lcom/flurry/android/FlurryAgent;->h:Z

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static setReportLocation(Z)V
    .registers 3

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iput-boolean p0, v1, Lcom/flurry/android/FlurryAgent;->w:Z

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static setReportUrl(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    invoke-static {p0}, Lcom/flurry/android/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/flurry/android/FlurryAgent;->J:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/flurry/android/FlurryAgent;->f:Lcom/flurry/android/FlurryAgent;

    iput-object p0, v1, Lcom/flurry/android/FlurryAgent;->v:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method


# virtual methods
.method final a(Ljava/lang/Throwable;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uncaught"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public final declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/flurry/android/FlurryAgent;->N:Landroid/location/Location;

    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->h()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_8

    :goto_6
    monitor-exit p0

    return-void

    :catch_8
    move-exception v0

    :try_start_9
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/z;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_6

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
