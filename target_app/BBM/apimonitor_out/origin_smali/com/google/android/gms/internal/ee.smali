.class public final Lcom/google/android/gms/internal/ee;
.super Ljava/lang/Object;


# instance fields
.field private final Bo:Lcom/google/android/gms/internal/ee$a;

.field private final zp:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ee$a;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/ee$a;-><init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ee;->Bo:Lcom/google/android/gms/internal/ee$a;

    iput-object p4, p0, Lcom/google/android/gms/internal/ee;->zp:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final dR()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->Bo:Lcom/google/android/gms/internal/ee$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->dR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dS()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->Bo:Lcom/google/android/gms/internal/ee$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->dS()I

    move-result v0

    return v0
.end method

.method public final dT()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->Bo:Lcom/google/android/gms/internal/ee$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->dT()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final dU()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->Bo:Lcom/google/android/gms/internal/ee$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->dT()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final dV()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->Bo:Lcom/google/android/gms/internal/ee$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->dV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dW()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->zp:Landroid/view/View;

    return-object v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ee;->Bo:Lcom/google/android/gms/internal/ee$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ee$a;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
