.class Lcom/google/android/gms/internal/gp$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;


# instance fields
.field final synthetic Iy:Lcom/google/android/gms/internal/gp$a;

.field final synthetic vb:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gp$a;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/gp$a$1;->Iy:Lcom/google/android/gms/internal/gp$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/gp$a$1;->vb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatchId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gp$a$1;->Iy:Lcom/google/android/gms/internal/gp$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/gp$a;->a(Lcom/google/android/gms/internal/gp$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gp$a$1;->vb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
