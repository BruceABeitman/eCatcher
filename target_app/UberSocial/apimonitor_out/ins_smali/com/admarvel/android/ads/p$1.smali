.class  Lcom/admarvel/android/ads/p$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.field final synthetic a:Lcom/admarvel/android/ads/p;
.method constructor <init>(Lcom/admarvel/android/ads/p;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/p$1;->a:Lcom/admarvel/android/ads/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
.registers 7
iget-object v0, p0, Lcom/admarvel/android/ads/p$1;->a:Lcom/admarvel/android/ads/p;
invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I
move-result v1
invoke-static {v0, v1}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p;I)I
iget-object v0, p0, Lcom/admarvel/android/ads/p$1;->a:Lcom/admarvel/android/ads/p;
invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I
move-result v1
invoke-static {v0, v1}, Lcom/admarvel/android/ads/p;->b(Lcom/admarvel/android/ads/p;I)I
iget-object v0, p0, Lcom/admarvel/android/ads/p$1;->a:Lcom/admarvel/android/ads/p;
invoke-static {v0}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p;)I
move-result v0
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/admarvel/android/ads/p$1;->a:Lcom/admarvel/android/ads/p;
invoke-static {v0}, Lcom/admarvel/android/ads/p;->b(Lcom/admarvel/android/ads/p;)I
move-result v0
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/admarvel/android/ads/p$1;->a:Lcom/admarvel/android/ads/p;
invoke-virtual {v0}, Lcom/admarvel/android/ads/p;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/p$1;->a:Lcom/admarvel/android/ads/p;
invoke-static {v1}, Lcom/admarvel/android/ads/p;->a(Lcom/admarvel/android/ads/p;)I
move-result v1
iget-object v2, p0, Lcom/admarvel/android/ads/p$1;->a:Lcom/admarvel/android/ads/p;
invoke-static {v2}, Lcom/admarvel/android/ads/p;->b(Lcom/admarvel/android/ads/p;)I
move-result v2
invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V
:cond_37
return-void
.end method