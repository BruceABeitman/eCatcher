.class final Lcom/google/android/gms/internal/fx$bl;
.super Lcom/google/android/gms/internal/fx$bf;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fx$bf",
        "<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
        ">;>;",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;"
    }
.end annotation


# instance fields
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$bl;->GJ:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fx$bf;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected final h(Lcom/google/android/gms/common/api/a$c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V

    return-void
.end method
