.class final Lcom/google/android/gms/appstate/AppStateManager$8;
.super Lcom/google/android/gms/appstate/AppStateManager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager;->resolve(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;[B)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic yH:I

.field final synthetic yK:Ljava/lang/String;

.field final synthetic yL:[B


# direct methods
.method constructor <init>(ILjava/lang/String;[B)V
    .registers 5

    iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yH:I

    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yK:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yL:[B

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$e;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$8;->a(Lcom/google/android/gms/internal/gb;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gb;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yH:I

    iget-object v1, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yK:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yL:[B

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;[B)V

    return-void
.end method