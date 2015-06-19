.class Lcom/google/android/gms/analytics/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ay;


# static fields
.field private static a:Lcom/google/android/gms/analytics/ab;

.field private static b:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/ab;->b:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/ab;->c:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/google/android/gms/analytics/ab;
    .registers 2

    sget-object v1, Lcom/google/android/gms/analytics/ab;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/ab;->a:Lcom/google/android/gms/analytics/ab;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v1, Lcom/google/android/gms/analytics/ab;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/ab;->a:Lcom/google/android/gms/analytics/ab;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/analytics/ab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/ab;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/ab;->a:Lcom/google/android/gms/analytics/ab;

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const-string v1, "&sr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ab;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method protected b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/ab;->c:Landroid/content/Context;

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

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "&sr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
