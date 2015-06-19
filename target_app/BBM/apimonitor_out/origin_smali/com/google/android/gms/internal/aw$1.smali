.class Lcom/google/android/gms/internal/aw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mk:Lcom/google/android/gms/internal/bc;

.field final synthetic ml:Lcom/google/android/gms/internal/aw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aw;Lcom/google/android/gms/internal/bc;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/aw$1;->ml:Lcom/google/android/gms/internal/aw;

    iput-object p2, p0, Lcom/google/android/gms/internal/aw$1;->mk:Lcom/google/android/gms/internal/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aw$1;->mk:Lcom/google/android/gms/internal/bc;

    iget-object v0, v0, Lcom/google/android/gms/internal/bc;->mN:Lcom/google/android/gms/internal/bg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bg;->destroy()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
