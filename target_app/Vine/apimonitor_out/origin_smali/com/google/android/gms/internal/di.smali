.class public final Lcom/google/android/gms/internal/di;
.super Lcom/google/android/gms/internal/dd$a;


# instance fields
.field private final mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/dd$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/di;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/dc;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/di;->mz:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    new-instance v1, Lcom/google/android/gms/internal/dl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/dl;-><init>(Lcom/google/android/gms/internal/dc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;->onInAppPurchaseRequested(Lcom/google/android/gms/ads/purchase/InAppPurchase;)V

    return-void
.end method
