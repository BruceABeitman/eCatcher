.class final Lcom/google/android/gms/internal/fx$k;
.super Lcom/google/android/gms/internal/fx$av;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fx$av",
        "<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
        ">;>;",
        "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;"
    }
.end annotation


# instance fields
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;

.field private final GM:Lcom/google/android/gms/games/GameBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$k;->GJ:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fx$av;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/GameBuffer;

    invoke-direct {v0, p3}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fx$k;->GM:Lcom/google/android/gms/games/GameBuffer;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fx$k;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public final getGames()Lcom/google/android/gms/games/GameBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$k;->GM:Lcom/google/android/gms/games/GameBuffer;

    return-object v0
.end method
