.class public final Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
.super Lcom/google/android/gms/common/data/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/d",
        "<",
        "Lcom/google/android/gms/games/multiplayer/Invitation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected final synthetic c(II)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->getEntry(II)Lcom/google/android/gms/games/multiplayer/Invitation;

    move-result-object v0

    return-object v0
.end method

.method protected final getEntry(II)Lcom/google/android/gms/games/multiplayer/Invitation;
    .registers 5

    new-instance v0, Lcom/google/android/gms/games/multiplayer/b;

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/multiplayer/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method

.method protected final getPrimaryDataMarkerColumn()Ljava/lang/String;
    .registers 2

    const-string v0, "external_invitation_id"

    return-object v0
.end method
