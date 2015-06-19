.class  Lcom/twidroid/TwidroidClient$10$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelView;
.field final synthetic b:Lcom/twidroid/TwidroidClient$10;
.method constructor <init>(Lcom/twidroid/TwidroidClient$10;Lcom/admarvel/android/ads/AdMarvelView;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/TwidroidClient$10$1;->b:Lcom/twidroid/TwidroidClient$10;
iput-object p2, p0, Lcom/twidroid/TwidroidClient$10$1;->a:Lcom/admarvel/android/ads/AdMarvelView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/TwidroidClient$10$1;->b:Lcom/twidroid/TwidroidClient$10;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$10;->a:Landroid/widget/FrameLayout;
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$10$1;->a:Lcom/admarvel/android/ads/AdMarvelView;
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$10$1;->a:Lcom/admarvel/android/ads/AdMarvelView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView;->invalidate()V
return-void
.end method