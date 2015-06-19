.class Lcom/google/android/gms/analytics/as$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/as;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/as;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/as;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/as$1;->a:Lcom/google/android/gms/analytics/as;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/as$1;->a:Lcom/google/android/gms/analytics/as;

    invoke-static {v0}, Lcom/google/android/gms/analytics/as;->a(Lcom/google/android/gms/analytics/as;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/as$1;->a:Lcom/google/android/gms/analytics/as;

    iget-object v2, p0, Lcom/google/android/gms/analytics/as$1;->a:Lcom/google/android/gms/analytics/as;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/as;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/analytics/as;->a(Lcom/google/android/gms/analytics/as;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/analytics/as$1;->a:Lcom/google/android/gms/analytics/as;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/analytics/as;->a(Lcom/google/android/gms/analytics/as;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/as$1;->a:Lcom/google/android/gms/analytics/as;

    invoke-static {v0}, Lcom/google/android/gms/analytics/as;->a(Lcom/google/android/gms/analytics/as;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0
.end method
