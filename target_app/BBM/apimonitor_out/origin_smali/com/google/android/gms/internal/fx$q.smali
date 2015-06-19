.class final Lcom/google/android/gms/internal/fx$q;
.super Lcom/google/android/gms/internal/fx$b;


# instance fields
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$q;->GJ:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fx$b;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
    .registers 4

    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method
