.class Lcom/twidroid/activity/MobileViewActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/MobileViewActivity$4;->onReceiveAd(Lcom/admarvel/android/ads/AdMarvelView;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelView;

.field final synthetic b:Lcom/twidroid/activity/MobileViewActivity$4;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/MobileViewActivity$4;Lcom/admarvel/android/ads/AdMarvelView;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/MobileViewActivity$4$1;->b:Lcom/twidroid/activity/MobileViewActivity$4;

    iput-object p2, p0, Lcom/twidroid/activity/MobileViewActivity$4$1;->a:Lcom/admarvel/android/ads/AdMarvelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$4$1;->b:Lcom/twidroid/activity/MobileViewActivity$4;

    iget-object v0, v0, Lcom/twidroid/activity/MobileViewActivity$4;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$4$1;->a:Lcom/admarvel/android/ads/AdMarvelView;

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$4$1;->a:Lcom/admarvel/android/ads/AdMarvelView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView;->invalidate()V

    return-void
.end method
