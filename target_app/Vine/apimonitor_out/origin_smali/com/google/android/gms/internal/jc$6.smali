.class Lcom/google/android/gms/internal/jc$6;
.super Lcom/google/android/gms/internal/jc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jc;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vv:Lcom/google/android/gms/internal/jc;

.field final synthetic Vx:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jc;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/jc$6;->Vv:Lcom/google/android/gms/internal/jc;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/jc$6;->Vx:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jc$a;-><init>(Lcom/google/android/gms/internal/jc$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/jh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jc$6;->a(Lcom/google/android/gms/internal/jh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jh;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jc$6;->Vx:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jh;->setMockMode(Z)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Ek:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jc$6;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
