.class Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field private a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

.field private b:Lcom/admarvel/android/ads/AdMarvelAd;


# direct methods
.method public constructor <init>(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

    iput-object p2, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    return-void
.end method


# virtual methods
.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 7

    const/16 v3, 0xcd

    iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

    invoke-static {v3}, Lcom/admarvel/android/ads/AdMarvelUtils;->getErrorReason(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-interface {v0, v3, v1, v2}, Lcom/admarvel/android/ads/AdMarvelAdapterListener;->onFailedToReceiveAd(ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Lcom/admarvel/android/ads/AdMarvelAd;)V

    :cond_11
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .registers 4

    iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;->a:Lcom/admarvel/android/ads/AdMarvelAdapterListener;

    iget-object v1, p0, Lcom/admarvel/android/admarveladmobadapter/InternalAdmobListener;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-interface {v0, v1}, Lcom/admarvel/android/ads/AdMarvelAdapterListener;->onReceiveAd(Lcom/admarvel/android/ads/AdMarvelAd;)V

    :cond_b
    return-void
.end method
