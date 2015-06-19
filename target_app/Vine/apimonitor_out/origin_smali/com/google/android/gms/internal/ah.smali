.class public final Lcom/google/android/gms/internal/ah;
.super Lcom/google/android/gms/internal/aq$a;


# instance fields
.field private final lO:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/aq$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ah;->lO:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->lO:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->lO:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onAdLeftApplication()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->lO:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    return-void
.end method

.method public onAdLoaded()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->lO:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->lO:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    return-void
.end method
