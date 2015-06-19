.class final Lcom/google/android/gms/internal/cs$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cs;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dy;

.field final synthetic b:Lcom/google/android/gms/internal/cs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cs;Lcom/google/android/gms/internal/dy;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/cs$2;->b:Lcom/google/android/gms/internal/cs;

    iput-object p2, p0, Lcom/google/android/gms/internal/cs$2;->a:Lcom/google/android/gms/internal/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cs$2;->b:Lcom/google/android/gms/internal/cs;

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cs;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/cs$2;->b:Lcom/google/android/gms/internal/cs;

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->b(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/internal/db;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/cs$2;->a:Lcom/google/android/gms/internal/dy;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/db;->a(Lcom/google/android/gms/internal/dy;)V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method
