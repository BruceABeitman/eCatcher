.class public final Lcom/google/android/gms/tagmanager/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/tagmanager/ai;


# direct methods
.method private declared-synchronized c()Lcom/google/android/gms/tagmanager/ai;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->b:Lcom/google/android/gms/tagmanager/ai;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/a;->c()Lcom/google/android/gms/tagmanager/ai;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/ai;->a(Ljava/lang/String;)V

    return-void
.end method

.method final b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/a;->b:Lcom/google/android/gms/tagmanager/ai;

    return-void
.end method
