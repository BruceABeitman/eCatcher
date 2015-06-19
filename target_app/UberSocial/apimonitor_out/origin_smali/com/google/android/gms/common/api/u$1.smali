.class Lcom/google/android/gms/common/api/u$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/u;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/u;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/u$1;->a:Lcom/google/android/gms/common/api/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/x;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/u$1;->a:Lcom/google/android/gms/common/api/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/u;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/u$1;->a:Lcom/google/android/gms/common/api/u;

    iget-object v0, v0, Lcom/google/android/gms/common/api/u;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1a

    iget-object v0, p0, Lcom/google/android/gms/common/api/u$1;->a:Lcom/google/android/gms/common/api/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/u;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/u$1;->a:Lcom/google/android/gms/common/api/u;

    invoke-static {v1}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/u;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
