.class final Lcom/google/android/gms/appstate/AppStateManager$7;
.super Lcom/google/android/gms/appstate/AppStateManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager;->list(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$c;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

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

    check-cast p1, Lcom/google/android/gms/internal/gb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$7;->a(Lcom/google/android/gms/internal/gb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gb;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/common/api/a$d;)V

    return-void
.end method
