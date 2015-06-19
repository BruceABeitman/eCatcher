.class Lcom/google/android/gms/internal/nz$6;
.super Lcom/google/android/gms/internal/of;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nz;->a(Lcom/google/android/gms/common/api/e;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

.field final synthetic e:Lcom/google/android/gms/internal/nz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nz;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/nz$6;->e:Lcom/google/android/gms/internal/nz;

    iput-object p2, p0, Lcom/google/android/gms/internal/nz$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/nz$6;->b:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/nz$6;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/nz$6;->d:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/of;-><init>(Lcom/google/android/gms/internal/nz$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nz$6;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 8

    iget-object v2, p0, Lcom/google/android/gms/internal/nz$6;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/nz$6;->b:[B

    iget-object v4, p0, Lcom/google/android/gms/internal/nz$6;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/nz$6;->d:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method
