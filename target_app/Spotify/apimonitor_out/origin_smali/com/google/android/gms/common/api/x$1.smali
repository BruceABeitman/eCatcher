.class final Lcom/google/android/gms/common/api/x$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/x;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/x;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/x$1;->a:Lcom/google/android/gms/common/api/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/aa;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/aa",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/x$1;->a:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/x$1;->a:Lcom/google/android/gms/common/api/x;

    iget-object v0, v0, Lcom/google/android/gms/common/api/x;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1a

    iget-object v0, p0, Lcom/google/android/gms/common/api/x$1;->a:Lcom/google/android/gms/common/api/x;

    invoke-static {v0}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/x$1;->a:Lcom/google/android/gms/common/api/x;

    invoke-static {v1}, Lcom/google/android/gms/common/api/x;->a(Lcom/google/android/gms/common/api/x;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
