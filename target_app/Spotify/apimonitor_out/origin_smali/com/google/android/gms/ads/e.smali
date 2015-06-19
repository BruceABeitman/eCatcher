.class public final Lcom/google/android/gms/ads/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/af;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/af;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/af;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/af;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/af;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/af;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af;->a(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/b;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/af;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b;->a()Lcom/google/android/gms/internal/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/af;->a(Lcom/google/android/gms/internal/ac;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->a:Lcom/google/android/gms/internal/af;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af;->a(Ljava/lang/String;)V

    return-void
.end method
