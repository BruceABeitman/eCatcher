.class public final Lcom/google/android/gms/internal/ni;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/games/Game;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/games/e;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/internal/jy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jy;->k()Lcom/google/android/gms/games/Game;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ni$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ni$1;-><init>(Lcom/google/android/gms/internal/ni;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    return-object v0
.end method
