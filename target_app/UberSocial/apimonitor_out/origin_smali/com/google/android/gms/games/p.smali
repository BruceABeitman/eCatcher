.class public final Lcom/google/android/gms/games/p;
.super Lcom/google/android/gms/common/data/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/gms/games/Player;
    .registers 4

    new-instance v0, Lcom/google/android/gms/games/d;

    iget-object v1, p0, Lcom/google/android/gms/games/p;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/p;->a(I)Lcom/google/android/gms/games/Player;

    move-result-object v0

    return-object v0
.end method