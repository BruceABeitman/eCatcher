.class public final Lcom/google/android/gms/internal/em;
.super Ljava/lang/Object;


# static fields
.field private static final qm:Ljava/lang/Object;

.field private static sb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/em;->qm:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/google/android/gms/internal/em;->qm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/em;->sb:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/em;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/em;->sb:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    :try_start_3
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v0, "com.google.ads.mediation.MediationAdapter"

    const/4 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_33

    move-result-object v4

    new-instance v0, Ljava/math/BigInteger;

    new-array v2, v7, [B

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v2, v0

    move v0, v1

    :goto_21
    array-length v6, v5

    if-ge v0, v6, :cond_39

    aget-object v6, v5, v0

    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :catch_33
    move-exception v0

    const-string v0, "err"

    sput-object v0, Lcom/google/android/gms/internal/em;->sb:Ljava/lang/String;

    :goto_38
    return-void

    :cond_39
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%X"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/em;->sb:Ljava/lang/String;

    goto :goto_38
.end method

.method public static bK()Ljava/lang/String;
    .registers 2

    sget-object v1, Lcom/google/android/gms/internal/em;->qm:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/em;->sb:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
