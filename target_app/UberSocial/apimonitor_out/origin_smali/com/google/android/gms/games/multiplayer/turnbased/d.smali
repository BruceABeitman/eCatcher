.class public final Lcom/google/android/gms/games/multiplayer/turnbased/d;
.super Lcom/google/android/gms/common/data/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/l;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(II)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/d;->b(II)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    move-result-object v0

    return-object v0
.end method

.method protected b(II)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 5

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/a;

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/d;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    const-string v0, "external_match_id"

    return-object v0
.end method