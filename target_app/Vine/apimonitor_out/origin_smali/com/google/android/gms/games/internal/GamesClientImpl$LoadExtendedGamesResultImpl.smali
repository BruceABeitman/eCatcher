.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadExtendedGamesResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadExtendedGamesResultImpl"
.end annotation


# instance fields
.field private final NS:Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadExtendedGamesResultImpl;->NS:Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;

    return-void
.end method
