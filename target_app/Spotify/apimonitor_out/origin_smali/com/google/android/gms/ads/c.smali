.class public final Lcom/google/android/gms/ads/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ad;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ad;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/ad;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/c;)Lcom/google/android/gms/internal/ad;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/ad;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/b;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/b;-><init>(Lcom/google/android/gms/ads/c;B)V

    return-object v0
.end method

.method public final a(I)Lcom/google/android/gms/ads/c;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ad;->a(I)V

    return-object p0
.end method

.method public final a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/b/b;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/c;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/ads/c;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/util/Date;)Lcom/google/android/gms/ads/c;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ad;->a(Ljava/util/Date;)V

    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/ads/c;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ad;->a(Z)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/ads/c;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ad;->b(Ljava/lang/String;)V

    return-object p0
.end method
