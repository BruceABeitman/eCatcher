.class final Lcom/google/android/gms/internal/kn;
.super Lcom/google/android/gms/internal/jx;


# instance fields
.field final a:Lcom/google/android/gms/games/multiplayer/realtime/d;

.field final synthetic b:Lcom/google/android/gms/internal/jy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/d;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/kn;->b:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/jx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/kn;->a:Lcom/google/android/gms/games/multiplayer/realtime/d;

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .registers 11

    iget-object v6, p0, Lcom/google/android/gms/internal/kn;->b:Lcom/google/android/gms/internal/jy;

    new-instance v0, Lcom/google/android/gms/internal/km;

    iget-object v1, p0, Lcom/google/android/gms/internal/kn;->b:Lcom/google/android/gms/internal/jy;

    iget-object v2, p0, Lcom/google/android/gms/internal/kn;->a:Lcom/google/android/gms/games/multiplayer/realtime/d;

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/km;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/d;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/gn;)V

    return-void
.end method
