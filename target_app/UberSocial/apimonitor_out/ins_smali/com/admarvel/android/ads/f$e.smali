.class  Lcom/admarvel/android/ads/f$e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.field final synthetic a:Lcom/admarvel/android/ads/f;
.method constructor <init>(Lcom/admarvel/android/ads/f;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/f$e;->a:Lcom/admarvel/android/ads/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/f$e;->a:Lcom/admarvel/android/ads/f;
invoke-static {v0}, Lcom/admarvel/android/ads/f;->a(Lcom/admarvel/android/ads/f;)I
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/admarvel/android/ads/f$e;->a:Lcom/admarvel/android/ads/f;
invoke-static {v0}, Lcom/admarvel/android/ads/f;->b(Lcom/admarvel/android/ads/f;)I
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/admarvel/android/ads/f$e;->a:Lcom/admarvel/android/ads/f;
invoke-virtual {v0}, Lcom/admarvel/android/ads/f;->i()V
:cond_15
return-void
.end method