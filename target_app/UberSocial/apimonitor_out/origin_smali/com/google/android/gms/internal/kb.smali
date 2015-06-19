.class final Lcom/google/android/gms/internal/kb;
.super Lcom/google/android/gms/internal/gn;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/i;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/kb;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/kb;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/i;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/kb;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/i;->b(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/i;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kb;->a(Lcom/google/android/gms/games/multiplayer/realtime/i;)V

    return-void
.end method

.method protected c()V
    .registers 1

    return-void
.end method
