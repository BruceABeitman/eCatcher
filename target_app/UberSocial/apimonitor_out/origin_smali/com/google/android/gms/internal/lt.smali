.class abstract Lcom/google/android/gms/internal/lt;
.super Lcom/google/android/gms/internal/gp;


# instance fields
.field final synthetic e:Lcom/google/android/gms/internal/jy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/lt;->e:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gp;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/lt;->e:Lcom/google/android/gms/internal/jy;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lt;->a(Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/i;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/lt;->a(Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method
