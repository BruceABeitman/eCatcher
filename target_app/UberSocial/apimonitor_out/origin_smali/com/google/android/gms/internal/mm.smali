.class final Lcom/google/android/gms/internal/mm;
.super Lcom/google/android/gms/internal/gn;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/j;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/mm;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V

    iput p3, p0, Lcom/google/android/gms/internal/mm;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/mm;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/j;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/mm;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mm;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/j;->a(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/j;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mm;->a(Lcom/google/android/gms/games/multiplayer/realtime/j;)V

    return-void
.end method

.method protected c()V
    .registers 1

    return-void
.end method
