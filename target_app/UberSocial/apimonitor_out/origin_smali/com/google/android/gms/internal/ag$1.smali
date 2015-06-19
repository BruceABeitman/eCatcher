.class Lcom/google/android/gms/internal/ag$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ag;->a(JJ)Lcom/google/android/gms/internal/ao;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ao;

.field final synthetic b:Lcom/google/android/gms/internal/ag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ag;Lcom/google/android/gms/internal/ao;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ag$1;->b:Lcom/google/android/gms/internal/ag;

    iput-object p2, p0, Lcom/google/android/gms/internal/ag$1;->a:Lcom/google/android/gms/internal/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ag$1;->a:Lcom/google/android/gms/internal/ao;

    iget-object v0, v0, Lcom/google/android/gms/internal/ao;->c:Lcom/google/android/gms/internal/av;

    invoke-interface {v0}, Lcom/google/android/gms/internal/av;->c()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
