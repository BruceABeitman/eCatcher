.class Lcom/google/android/gms/analytics/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/m;


# static fields
.field private static qI:Ljava/lang/Object;

.field private static uk:Lcom/google/android/gms/analytics/ae;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/ae;->qI:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/ae;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static cs()Lcom/google/android/gms/analytics/ae;
    .registers 2

    sget-object v1, Lcom/google/android/gms/analytics/ae;->qI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/ae;->uk:Lcom/google/android/gms/analytics/ae;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static n(Landroid/content/Context;)V
    .registers 3

    sget-object v1, Lcom/google/android/gms/analytics/ae;->qI:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/ae;->uk:Lcom/google/android/gms/analytics/ae;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/analytics/ae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/ae;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/ae;->uk:Lcom/google/android/gms/analytics/ae;

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
.method protected ct()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->mContext:Landroid/content/Context;

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

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
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

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ae;->ct()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public x(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "&sr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
