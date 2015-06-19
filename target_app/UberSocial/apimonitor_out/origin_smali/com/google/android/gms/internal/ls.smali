.class final Lcom/google/android/gms/internal/ls;
.super Lcom/google/android/gms/internal/gn;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/m;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final c:Lcom/google/android/gms/common/api/Status;

.field private final d:Lcom/google/android/gms/games/multiplayer/turnbased/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ls;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ls;->c:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/b;

    invoke-direct {v0, p4}, Lcom/google/android/gms/games/multiplayer/turnbased/b;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ls;->d:Lcom/google/android/gms/games/multiplayer/turnbased/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->c:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/common/api/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/t;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/common/api/t;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/games/multiplayer/turnbased/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->d:Lcom/google/android/gms/games/multiplayer/turnbased/b;

    return-object v0
.end method

.method protected c()V
    .registers 1

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ls;->d:Lcom/google/android/gms/games/multiplayer/turnbased/b;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/b;->e()V

    return-void
.end method
