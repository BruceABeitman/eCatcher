.class final Lcom/google/android/gms/appstate/AppStateManager$4;
.super Lcom/google/android/gms/appstate/AppStateManager$e;


# instance fields
.field final synthetic vc:I

.field final synthetic vd:[B


# direct methods
.method constructor <init>(I[B)V
    .registers 4

    iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->vc:I

    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->vd:[B

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$e;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/dl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$4;->a(Lcom/google/android/gms/internal/dl;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/dl;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->vc:I

    iget-object v1, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->vd:[B

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/common/api/a$c;I[B)V

    return-void
.end method
