.class Lcom/twidroid/activity/MobileViewActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/MobileViewActivity;->a(Landroid/view/Display;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/twidroid/activity/MobileViewActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/MobileViewActivity;Landroid/widget/FrameLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/MobileViewActivity$4;->b:Lcom/twidroid/activity/MobileViewActivity;

    iput-object p2, p0, Lcom/twidroid/activity/MobileViewActivity$4;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onClickAd(Lcom/admarvel/android/ads/AdMarvelView;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onClose()V
    .registers 3

    const-string v0, "admarvel"

    const-string v1, "onClose"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onExpand()V
    .registers 3

    const-string v0, "admarvel"

    const-string v1, "onExpand"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailedToReceiveAd(Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)V
    .registers 7

    const-string v0, "MobileViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to receive ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD_REQUEST_IN_PROCESS_EXCEPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "MobileViewActivity"

    const-string v1, "AD_REQUEST_IN_PROCESS_EXCEPTION -- wait a little while"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method public onReceiveAd(Lcom/admarvel/android/ads/AdMarvelView;)V
    .registers 4

    const-string v0, "MobileViewActivity"

    const-string v1, "Ad received"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$4;->b:Lcom/twidroid/activity/MobileViewActivity;

    iget-object v0, v0, Lcom/twidroid/activity/MobileViewActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/MobileViewActivity$4$1;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/activity/MobileViewActivity$4$1;-><init>(Lcom/twidroid/activity/MobileViewActivity$4;Lcom/admarvel/android/ads/AdMarvelView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRequestAd(Lcom/admarvel/android/ads/AdMarvelView;)V
    .registers 2

    return-void
.end method
