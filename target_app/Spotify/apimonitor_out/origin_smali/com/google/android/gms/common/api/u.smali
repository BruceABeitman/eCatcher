.class public abstract Lcom/google/android/gms/common/api/u;
.super Lcom/google/android/gms/common/api/t;

# interfaces
.implements Lcom/google/android/gms/common/api/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/o;",
        "A::",
        "Lcom/google/android/gms/common/api/f;",
        ">",
        "Lcom/google/android/gms/common/api/t",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/aa",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/h",
            "<TA;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/common/api/y;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/h",
            "<TA;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/t;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    iput-object v0, p0, Lcom/google/android/gms/common/api/u;->a:Lcom/google/android/gms/common/api/h;

    return-void
.end method

.method private a(Landroid/os/RemoteException;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/u;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/f;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/v;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/f;->d()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/v;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/v;)V

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/u;->b(Lcom/google/android/gms/common/api/f;)V
    :try_end_f
    .catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_f} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_15

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/u;->a(Landroid/os/RemoteException;)V

    throw v0

    :catch_15
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/u;->a(Landroid/os/RemoteException;)V

    goto :goto_f
.end method

.method public final a(Lcom/google/android/gms/common/api/y;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/u;->b:Lcom/google/android/gms/common/api/y;

    return-void
.end method

.method protected final b()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/common/api/t;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/u;->b:Lcom/google/android/gms/common/api/y;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/api/u;->b:Lcom/google/android/gms/common/api/y;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/y;->a(Lcom/google/android/gms/common/api/aa;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/u;->b:Lcom/google/android/gms/common/api/y;

    :cond_f
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_7
    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hh;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/u;->a(Lcom/google/android/gms/common/api/o;)V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected abstract b(Lcom/google/android/gms/common/api/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method

.method public final c()Lcom/google/android/gms/common/api/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/h",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/u;->a:Lcom/google/android/gms/common/api/h;

    return-object v0
.end method
