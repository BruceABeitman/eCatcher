.class public final Lcom/google/android/gms/internal/fc;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/fc$a;

.field private final b:Landroid/view/View;


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

    new-instance v0, Lcom/google/android/gms/internal/fc$a;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/fc$a;-><init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fc;->a:Lcom/google/android/gms/internal/fc$a;

    iput-object p4, p0, Lcom/google/android/gms/internal/fc;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->a:Lcom/google/android/gms/internal/fc$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fc$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fc;->a:Lcom/google/android/gms/internal/fc$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fc$a;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method