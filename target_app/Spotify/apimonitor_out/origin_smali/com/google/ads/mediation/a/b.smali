.class final Lcom/google/ads/mediation/a/b;
.super Lcom/google/android/gms/ads/a;


# instance fields
.field private final a:Lcom/google/ads/mediation/a/a;

.field private final b:Lcom/google/android/gms/ads/b/d;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/a/a;Lcom/google/android/gms/ads/b/d;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a/b;->a:Lcom/google/ads/mediation/a/a;

    iput-object p2, p0, Lcom/google/ads/mediation/a/b;->b:Lcom/google/android/gms/ads/b/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/mediation/a/b;->b:Lcom/google/android/gms/ads/b/d;

    iget-object v1, p0, Lcom/google/ads/mediation/a/b;->a:Lcom/google/ads/mediation/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/d;->a()V

    return-void
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/ads/mediation/a/b;->b:Lcom/google/android/gms/ads/b/d;

    iget-object v1, p0, Lcom/google/ads/mediation/a/b;->a:Lcom/google/ads/mediation/a/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/b/d;->a(I)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/mediation/a/b;->b:Lcom/google/android/gms/ads/b/d;

    iget-object v1, p0, Lcom/google/ads/mediation/a/b;->a:Lcom/google/ads/mediation/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/d;->e()V

    iget-object v0, p0, Lcom/google/ads/mediation/a/b;->b:Lcom/google/android/gms/ads/b/d;

    iget-object v1, p0, Lcom/google/ads/mediation/a/b;->a:Lcom/google/ads/mediation/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/d;->b()V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/mediation/a/b;->b:Lcom/google/android/gms/ads/b/d;

    iget-object v1, p0, Lcom/google/ads/mediation/a/b;->a:Lcom/google/ads/mediation/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/d;->c()V

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/mediation/a/b;->b:Lcom/google/android/gms/ads/b/d;

    iget-object v1, p0, Lcom/google/ads/mediation/a/b;->a:Lcom/google/ads/mediation/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/ads/b/d;->d()V

    return-void
.end method
