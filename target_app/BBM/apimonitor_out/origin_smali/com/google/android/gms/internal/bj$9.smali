.class Lcom/google/android/gms/internal/bj$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mU:Lcom/google/android/gms/internal/bj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/bj$9;->mU:Lcom/google/android/gms/internal/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bj$9;->mU:Lcom/google/android/gms/internal/bj;

    invoke-static {v0}, Lcom/google/android/gms/internal/bj;->a(Lcom/google/android/gms/internal/bj;)Lcom/google/android/gms/internal/bh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->onAdClosed()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method
