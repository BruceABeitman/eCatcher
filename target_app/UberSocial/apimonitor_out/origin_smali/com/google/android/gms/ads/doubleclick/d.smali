.class public final Lcom/google/android/gms/ads/doubleclick/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/t;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d;->a:Lcom/google/android/gms/internal/t;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d;->a:Lcom/google/android/gms/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/t;->a()Lcom/google/android/gms/ads/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/ads/a;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d;->a:Lcom/google/android/gms/internal/t;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/doubleclick/a;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d;->a:Lcom/google/android/gms/internal/t;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/ads/doubleclick/a;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/doubleclick/b;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d;->a:Lcom/google/android/gms/internal/t;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/b;->h()Lcom/google/android/gms/internal/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/q;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d;->a:Lcom/google/android/gms/internal/t;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d;->a:Lcom/google/android/gms/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/t;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/ads/doubleclick/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d;->a:Lcom/google/android/gms/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/t;->c()Lcom/google/android/gms/ads/doubleclick/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d;->a:Lcom/google/android/gms/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/t;->d()Z

    move-result v0

    return v0
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/d;->a:Lcom/google/android/gms/internal/t;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/t;->e()V

    return-void
.end method
