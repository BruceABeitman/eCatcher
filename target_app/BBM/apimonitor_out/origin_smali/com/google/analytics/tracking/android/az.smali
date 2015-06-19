.class final Lcom/google/analytics/tracking/android/az;
.super Ljava/lang/Object;
.source "ScreenResolutionDefaultProvider.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/n;


# static fields
.field private static a:Lcom/google/analytics/tracking/android/az;

.field private static b:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/az;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/analytics/tracking/android/az;->c:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/google/analytics/tracking/android/az;
    .registers 2

    sget-object v1, Lcom/google/analytics/tracking/android/az;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/analytics/tracking/android/az;->a:Lcom/google/analytics/tracking/android/az;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v1, Lcom/google/analytics/tracking/android/az;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/analytics/tracking/android/az;->a:Lcom/google/analytics/tracking/android/az;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/analytics/tracking/android/az;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/az;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/az;->a:Lcom/google/analytics/tracking/android/az;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "&sr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/analytics/tracking/android/az;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method
