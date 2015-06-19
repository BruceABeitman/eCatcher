.class public final Lcom/google/android/gms/internal/nk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e;)Landroid/content/Intent;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->o()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;I)Lcom/google/android/gms/common/api/j;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/nk$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/nk$1;-><init>(Lcom/google/android/gms/internal/nk;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/games/multiplayer/h;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/games/multiplayer/h;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/e;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->t()V

    return-void
.end method

.method public c(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/nk;->a(Lcom/google/android/gms/common/api/e;I)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    return-object v0
.end method
