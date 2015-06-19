.class Lcom/google/android/gms/internal/gp$5;
.super Lcom/google/android/gms/internal/gp$f;


# instance fields
.field final synthetic Iq:Lcom/google/android/gms/internal/gp;

.field final synthetic Ir:Ljava/lang/String;

.field final synthetic It:[B

.field final synthetic Iu:Ljava/lang/String;

.field final synthetic Iv:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gp;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/gp$5;->Iq:Lcom/google/android/gms/internal/gp;

    iput-object p2, p0, Lcom/google/android/gms/internal/gp$5;->Ir:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gp$5;->It:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/gp$5;->Iu:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/gp$5;->Iv:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gp$f;-><init>(Lcom/google/android/gms/internal/gp$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gp$5;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fx;)V
    .registers 8

    iget-object v2, p0, Lcom/google/android/gms/internal/gp$5;->Ir:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/gp$5;->It:[B

    iget-object v4, p0, Lcom/google/android/gms/internal/gp$5;->Iu:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/gp$5;->Iv:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method
