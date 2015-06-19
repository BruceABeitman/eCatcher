.class Lcom/google/android/gms/analytics/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ay;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/analytics/v;


# instance fields
.field private c:Lcom/google/android/gms/ads/a/b;

.field private d:J

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/v;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/v;->e:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/google/android/gms/ads/a/b;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/analytics/v;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Lcom/google/android/gms/common/h; {:try_start_1 .. :try_end_6} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_16
    .catch Lcom/google/android/gms/common/g; {:try_start_1 .. :try_end_6} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_24

    move-result-object v0

    :goto_7
    return-object v0

    :catch_8
    move-exception v1

    const-string v1, "IllegalStateException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V

    goto :goto_7

    :catch_f
    move-exception v1

    const-string v1, "GooglePlayServicesRepairableException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V

    goto :goto_7

    :catch_16
    move-exception v1

    const-string v1, "IOException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V

    goto :goto_7

    :catch_1d
    move-exception v1

    const-string v1, "GooglePlayServicesNotAvailableException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V

    goto :goto_7

    :catch_24
    move-exception v1

    const-string v1, "Unknown exception. Could not get the ad Id."

    invoke-static {v1}, Lcom/google/android/gms/analytics/w;->d(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/analytics/ay;
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/v;->b:Lcom/google/android/gms/analytics/v;

    if-nez v0, :cond_13

    sget-object v1, Lcom/google/android/gms/analytics/v;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/analytics/v;->b:Lcom/google/android/gms/analytics/v;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/analytics/v;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/v;->b:Lcom/google/android/gms/analytics/v;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/google/android/gms/analytics/v;->b:Lcom/google/android/gms/analytics/v;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/analytics/v;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    invoke-direct {p0}, Lcom/google/android/gms/analytics/v;->a()Lcom/google/android/gms/ads/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/analytics/v;->c:Lcom/google/android/gms/ads/a/b;

    iput-wide v0, p0, Lcom/google/android/gms/analytics/v;->d:J

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->c:Lcom/google/android/gms/ads/a/b;

    if-eqz v0, :cond_3f

    const-string v0, "&adid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->c:Lcom/google/android/gms/ads/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/b;->a()Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    const-string v0, "&ate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/analytics/v;->c:Lcom/google/android/gms/ads/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "1"

    goto :goto_28

    :cond_3c
    const-string v0, "0"

    goto :goto_28

    :cond_3f
    const/4 v0, 0x0

    goto :goto_28
.end method
