.class final Lcom/google/android/gms/appstate/AppStateManager$3;
.super Lcom/google/android/gms/appstate/AppStateManager$e;


# instance fields
.field final synthetic vc:I

.field final synthetic vd:[B


# direct methods
.method constructor <init>(I[B)V
    .registers 4

    iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$3;->vc:I

    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$3;->vd:[B

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$e;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/dl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$3;->a(Lcom/google/android/gms/internal/dl;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/dl;)V
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/appstate/AppStateManager$3;->vc:I

    iget-object v2, p0, Lcom/google/android/gms/appstate/AppStateManager$3;->vd:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/common/api/a$c;I[B)V

    return-void
.end method
