.class abstract Lcom/google/android/gms/internal/jz;
.super Lcom/google/android/gms/internal/lt;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/internal/jz;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/lt;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jz;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    array-length v1, p4

    :goto_e
    if-ge v0, v1, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/internal/jz;->d:Ljava/util/ArrayList;

    aget-object v3, p4, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1a
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/jz;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/jz;->a(Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
.end method
