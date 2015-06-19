.class final Lcom/google/android/gms/internal/mn;
.super Lcom/google/android/gms/internal/gn;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jy;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/turnbased/c;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/mn;->a:Lcom/google/android/gms/internal/jy;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/mn;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/multiplayer/turnbased/c;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mn;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/c;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mn;->a(Lcom/google/android/gms/games/multiplayer/turnbased/c;)V

    return-void
.end method

.method protected c()V
    .registers 1

    return-void
.end method
