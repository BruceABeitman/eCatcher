.class Lcom/google/android/gms/internal/bl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bl;->a(JJ)Lcom/google/android/gms/internal/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ng:Lcom/google/android/gms/internal/br;

.field final synthetic nh:Lcom/google/android/gms/internal/bl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/br;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/bl$1;->nh:Lcom/google/android/gms/internal/bl;

    iput-object p2, p0, Lcom/google/android/gms/internal/bl$1;->ng:Lcom/google/android/gms/internal/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bl$1;->ng:Lcom/google/android/gms/internal/br;

    iget-object v0, v0, Lcom/google/android/gms/internal/br;->nL:Lcom/google/android/gms/internal/bv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bv;->destroy()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ev;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
